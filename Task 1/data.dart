library dart_task;

import 'dart:io';
import 'dart:convert';
import 'dart:math';

class Data {
  List<dynamic> test_data = [];
  int length = 0;
  int no_of_questions = 0;
  int score = 0;
  int outOf = 0;
  Future<int> getData(String fileName, int no_of_questions) async {
    var test_data = [];
    await File(fileName).readAsString().then((String contents) {
      test_data = json.decode(contents);
    });
    this.test_data = test_data;
    this.length = test_data.length;
    this.no_of_questions = no_of_questions;
    this.printQuestions();
    return 0;
  }

  void printQuestions() {
    final random = new Random();
    List<String> ans = [];
    for (int i = 0; i < this.no_of_questions; i++) {
      int index = random.nextInt(this.test_data.length);
      var options = this.test_data[index]["options"];
      List answers = this.test_data[index]["answer"];
      outOf += answers.length * 3;
      print("\n${i + 1}. ${this.test_data[index]["question"]}");
      print(
          "\na. ${options["a"]}  b. ${options["b"]}  c. ${options["c"]}  d. ${options["d"]}");
      print("\nEnter your answer(s): ");
      ans = stdin.readLineSync()!.toLowerCase().trim().split(" ");
      int j = 0;
      while (j < ans.length) {
        if (ans[j].codeUnitAt(0) < 97 || ans[j].codeUnitAt(0) > 100) {
          print("Invalid choices!\nEnter your answer(s): ");
          ans = stdin.readLineSync()!.toLowerCase().trim().split(" ");
          j = 0;
          continue;
        }
        j++;
      }
      if (ans.length == answers.length) {
        for (int k = 0; k < ans.length; k++) {
          if (answers.contains(options[ans[k]])) {
            this.score += 3;
          }
        }
      }
      this.test_data.removeAt(index);
    }
    print("\nYour score is: ${this.score}/${this.outOf}\n");
    if (this.score == this.outOf) {
      print("Congrats! You got a Perfect score \u2714 \n");
    }
  }
}
