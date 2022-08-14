library dart_task;

import '../topic.dart';
import '../data.dart';

class CSS extends Topic {
  @override
  void setDesc(int noOfQuestions) {
    this.topicName = "CSS";
    this.noOfQuestions = noOfQuestions;
    this.fileName = "./QnA/css.json";
  }

  Future<int> printTest(int noOfQuestions) async {
    CSS obj = new CSS();
    obj.setDesc(noOfQuestions);
    obj.printDesc();

    Data data_obj = new Data();
    await data_obj.getData(obj.fileName, obj.noOfQuestions);
    return 0;
  }
}
