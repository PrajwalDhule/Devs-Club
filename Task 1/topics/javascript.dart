library dart_task;

import '../topic.dart';
import '../data.dart';

class Javascript extends Topic {
  @override
  void setDesc(int noOfQuestions) {
    this.topicName = "Javascript";
    this.noOfQuestions = noOfQuestions;
    this.fileName = "./QnA/javascript.json";
  }

  Future<int> printTest(int noOfQuestions) async {
    Javascript obj = new Javascript();
    obj.setDesc(noOfQuestions);
    obj.printDesc();

    Data data_obj = new Data();
    await data_obj.getData(obj.fileName, obj.noOfQuestions);
    return 0;
  }
}
