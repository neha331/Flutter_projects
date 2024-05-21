

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/single_question_controller.dart';
import 'package:provider/provider.dart';
 
class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  // final List allQuestions = [
  //   const SingleQuestionMode(
  //     question: "What is Flutter ?",
  //     options: ["Python web framework","version control system", "open-source UI SDK", "IDE for Java development"],
  //     answerIndex: 2,
  //   ),
  //   const SingleQuestionMode(
  //     question: "Which language is used for Flutter app development?",
  //     options: ["JavaScript","Python", "Dart", "Kotlin"],
  //     answerIndex: 2,
  //   ),
  //    const SingleQuestionMode(
  //     question: "Which of the following is NOT a widget in Flutter?",
  //     options: ["Scaffold","FlexBox", "ListView", "MaterialApp"],
  //     answerIndex: 1,
  //   ),
  //    const SingleQuestionMode(
  //     question: "Which widget is used to create a scrollable list in Flutter?",
  //     options: [" MultiChildScrollView", "Column", "Scrollbar", "ListView"],
  //     answerIndex: 3,
  //   ),
  //    const SingleQuestionMode(
  //     question: "What feature accelerates UI updates in Flutter?",
  //     options: ["Hot reload","Quick sync", "Live preview", "widget’s Fast refresh"],
  //     answerIndex: 0,
  //   ),   
  // ];

  //int? questionScreen = 1;
  // int queNum =0;
  // int selectedAnswerIndex =- 1;
  // int score=0;
  
  
  
  Scaffold isQuestionScreen (quizController){
    if (quizController.questionScreen == 1){
      return Scaffold(
      backgroundColor: const Color.fromARGB(255, 92, 31, 178),
      body:Center(
        child: Column(
          children: [
            Image.asset('assets/images/quiz1.jpeg',height: 500.0,),
            ElevatedButton(
              onPressed: (){
               quizController.queScreen();
              }, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                fixedSize: MaterialStateProperty.all(const Size(200, 60)),
              ),
              child: const Text(
                'Start Quiz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0, 
                  fontWeight: FontWeight.bold, 
                  letterSpacing: 1.2, 
                ),
              ),
           
            )
          ],
        ),
      )
    );
    }
    // else if(quizController.questionScreen==6){
    //   return Scaffold(
    //     body: Text("hi"),
    //   );
    // }
    else if(quizController.questionScreen ==2){
      return Scaffold(
        backgroundColor:const Color.fromARGB(255, 142, 70, 171),
        appBar: AppBar(
          title:const Text(
            "QuizApp",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color:Colors.orange,
            ),
         ),
         centerTitle: true,
         backgroundColor: const Color.fromARGB(255, 90, 6, 120),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
            height:25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Questions:",
                 style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  )
              ),
              Text(
                "${quizController.queNum + 1}/${quizController.allQuestions.length}",
                 style: const TextStyle(
                   fontSize: 25,
                   fontWeight:FontWeight.w600,
                )
              ),
            ],
          ),
          const SizedBox(
            height:50,
          ),
          SizedBox(
            width:400,
            height:70,
            child: Center(
              child: Text("${quizController.allQuestions[quizController.queNum].question}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                 fontSize: 25,
                 fontWeight:FontWeight.w500,
                ),
                    ),
             ),
          ),
          const SizedBox(
            height:30,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: quizController.checkAnswer(0),
              fixedSize: MaterialStateProperty.all(const Size(300, 60)),
            ),
            onPressed:(){
               if(quizController.selectedAnswerIndex == -1){
                //setState(() {
                  quizController.selectedAnswerIndexOfQuestion(0);
                //});
              }
            }, 
            child: Text(
              "${quizController.allQuestions[quizController.queNum].options[0]}",
               style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              )
            ),
        ),
        const SizedBox(
          height:20,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: quizController.checkAnswer(1),
            fixedSize: MaterialStateProperty.all(const Size(300, 60)),
          ),
          onPressed:(){
            if(quizController.selectedAnswerIndex == -1){
                //setState(() {
                  quizController.selectedAnswerIndexOfQuestion(1);;
                //});
            }
          }, 
          child: Text(
            "${quizController.allQuestions[quizController.queNum].options[1]}",
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            )
          ),
        ),
        const SizedBox(
          height:20,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: quizController.checkAnswer(2),
            fixedSize: MaterialStateProperty.all(const Size(300, 60)),
          ),
          onPressed:(){
               if(quizController.selectedAnswerIndex == -1){
                //setState(() {
                  quizController.selectedAnswerIndexOfQuestion(2);;
                //});
              }
          },  child: Text(
          "${quizController.allQuestions[quizController.queNum].options[2]}",
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            )
          ),
        ),
        const SizedBox(
          height:20,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: quizController.checkAnswer(3),
            fixedSize: MaterialStateProperty.all(const Size(300, 60)),
          ),
          onPressed:(){
               if(quizController.selectedAnswerIndex == -1){
                //setState(() {
                  quizController.selectedAnswerIndexOfQuestion(3);
                //});
               }
          },
           child: Text(
            "${quizController.allQuestions[quizController.queNum].options[3]}",
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            )
          ),
        ),
        const SizedBox(
          height:20,
        ),
           
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          quizController.validateCurrentPage();
        },
        backgroundColor: Colors.blue,
        child:const Icon(
          Icons.forward,
          color:Colors.orange,
        ),
      ),    
    );
    }else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
                "quizapp",
                style:TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                )
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height:30,   
            ),
            Text(
              "${quizController.score}/${quizController.allQuestions.length}",
               style:const TextStyle(
                fontSize:30,
                fontWeight: FontWeight.w800,
                color:Color.fromARGB(255, 212, 119, 11),
               ),
            ),
            Image.network(
             "https://media.istockphoto.com/id/1168757141/vector/gold-trophy-with-the-name-plate-of-the-winner-of-the-competition.jpg?s=612x612&w=0&k=20&c=ljsP4p0yuJnh4f5jE2VwXfjs96CC0x4zj8CHUoMo39E=" ,
              height: 300,
              width: 500,
            ),
            const Text(
              "Congraturations !",
              style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height:15),
            const Text(
              "Quiz Completed ",
              style:TextStyle(fontSize:23,
              fontWeight: FontWeight.w500,
              color:Color.fromARGB(255, 212, 119, 11),
            ),
            ) ,
            const SizedBox(height:15),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 127, 32, 134)),
                fixedSize: MaterialStateProperty.all(const Size(100, 50)),
              ),
              onPressed: (){
               quizController.resetQuiz();
              },
              child:const Text(
              "Reset",
               style:TextStyle(
                fontSize:20,
                fontWeight:FontWeight.normal,
                color: Colors.orange, 
              )
            ),
            )
          ]
        ),
      );
    }           
  }
  
  @override
  Widget build(BuildContext context) {
    var quizController = Provider.of<QuizController>(context);
    return isQuestionScreen(quizController);
  }
}














