library dart_task;

import 'dart:io';
import './topics/html.dart';
import './topics/css.dart';
import './topics/javascript.dart';

void main() {
  print("\nWELCOME TO MY QUIZ APP!");
  int noOfQuestions = 3;
  input(noOfQuestions);
}

void input(int noOfQuestions) async {
  while (true) {
    print(
        "\n\u27A1  Pick any one of the following topics (topic no) for the test.\nYou will have to answer ${noOfQuestions} MCQ type questions which can have more than 1 correct answer");
    print("\n1) HTML\n2) CSS\n3) Javascript\n4) Exit\nEnter choice: ");
    int n = int.parse(stdin.readLineSync()!);

    switch (n) {
      case 1:
        {
          HTML obj = new HTML();
          await obj.printTest(noOfQuestions);
        }
        break;

      case 2:
        {
          CSS obj = new CSS();
          await obj.printTest(noOfQuestions);
        }
        break;

      case 3:
        {
          Javascript obj = new Javascript();
          await obj.printTest(noOfQuestions);
        }
        break;

      case 4:
        {
          print("Thanks for playing!\n");
          exit(0);
        }

      default:
        {
          print("Invalid choice");
        }
        break;
    }
  }
}
