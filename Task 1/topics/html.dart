library dart_task;

import '../topic.dart';
import '../data.dart';

class HTML extends Topic {
  @override
  void setDesc(int noOfQuestions) {
    this.topicName = "HTML";
    this.noOfQuestions = noOfQuestions;
    this.fileName = "./QnA/html.json";
  }

  Future<int> printTest(int noOfQuestions) async {
    HTML obj = new HTML();
    obj.setDesc(noOfQuestions);
    obj.printDesc();

    Data data_obj = new Data();
    await data_obj.getData(obj.fileName, obj.noOfQuestions);
    return 0;
  }
}
