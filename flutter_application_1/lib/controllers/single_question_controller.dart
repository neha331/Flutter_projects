import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/single_question_model.dart';

class QuizController extends ChangeNotifier {
  final List<SingleQuestionMode> allQuestions;
  int queNum = 0;
  int selectedAnswerIndex = -1;
  int score = 0;
  int questionScreen = 1;

  QuizController(this.allQuestions);

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex){
    if(selectedAnswerIndex != -1){
      if (buttonIndex == allQuestions[queNum].answerIndex){
        return const MaterialStatePropertyAll(Colors.green);   
      }else if (buttonIndex == selectedAnswerIndex){
        return const MaterialStatePropertyAll(Colors.red);
      }else{
        return const MaterialStatePropertyAll(Color.fromARGB(255, 231, 199, 252));
      }
    }else {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 231, 199, 252));
    }
    
  }
  void selectedAnswerIndexOfQuestion(int selectedOption){
      selectedAnswerIndex =selectedOption;
      notifyListeners();
  }
  void nextQuestion() {
    if (queNum < allQuestions.length) {
      queNum++;
      selectedAnswerIndex = -1; // Reset selected answer index for the new question
      notifyListeners();
    }
  }

  void resetQuiz() {
    queNum = 0;
    selectedAnswerIndex = -1;
    score = 0;
    questionScreen=1;
    notifyListeners();
  }

  void queScreen(){
    questionScreen = questionScreen+1 ;
    notifyListeners();
  
  }
  void validateCurrentPage(){
    if(selectedAnswerIndex == -1){
      return;
    }
    if(selectedAnswerIndex == allQuestions[queNum].answerIndex){
      score += 1;
    }
    if(selectedAnswerIndex!= -1){
      if(queNum == allQuestions.length-1){
        
          questionScreen=3;
          notifyListeners();
       
      }
      selectedAnswerIndex = -1;
    
        queNum +=1;
        notifyListeners();
   
    }
  }

}

