class SingleQuestionMode {
 final  String? question;
 final  List<String>? options;
 final  int?  answerIndex; 

 const SingleQuestionMode({this.question, this.options,
  this.answerIndex
 });

 factory SingleQuestionMode.fromMap(Map<String, dynamic> map) {
    return SingleQuestionMode(
      question: map['question'],
      options: List<String>.from(map['options']),
      answerIndex: map['answerIndex'],
    );
  }
}
