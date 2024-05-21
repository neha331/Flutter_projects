import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/single_question_controller.dart';
import 'package:flutter_application_1/models/single_question_model.dart';


import 'package:flutter_application_1/view/quiz_app.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuizController([
        const SingleQuestionMode(
          question: "What is Flutter?",
          options: ["Python web framework", "version control system", "open-source UI SDK", "IDE for Java development"],
          answerIndex: 2,
        ),
        const SingleQuestionMode(
          question: "Which language is used for Flutter app development?",
          options: ["JavaScript", "Python", "Dart", "Kotlin"],
          answerIndex: 2,
        ),
        const SingleQuestionMode(
          question: "Which of the following is NOT a widget in Flutter?",
          options: ["Scaffold", "FlexBox", "ListView", "MaterialApp"],
          answerIndex: 1,
        ),
        const SingleQuestionMode(
          question: "Which widget is used to create a scrollable list in Flutter?",
          options: [" SingleChildScrollView", "Column", "Scrollbar", "ListView"],
          answerIndex: 3,
        ),
        const SingleQuestionMode(
          question: "What feature accelerates UI updates in Flutter?",
          options: ["Hot reload", "Quick sync", "Live preview", "widget’s Fast refresh"],
          answerIndex: 0,
        ),
      ]),
      child: const MaterialApp(
        title: 'Quiz App',
        debugShowCheckedModeBanner:false,
        home: QuizApp(),
      ),
    );
  }
}
