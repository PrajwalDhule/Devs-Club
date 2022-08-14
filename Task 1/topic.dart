library dart_task;

abstract class Topic {
  String topicName = "";
  int noOfQuestions = 0;
  String fileName = "";

  void setDesc(int noOfQuestions);
  void printDesc() {
    print(
        "\nTopic: ${this.topicName}  No. of questions: ${this.noOfQuestions}");
  }
}
