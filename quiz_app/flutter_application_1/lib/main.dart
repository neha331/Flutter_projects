import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/quiz_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
//import 'firebase_options.dart';

 Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
   runApp(const MainApp());
 }

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const  GetMaterialApp(
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return GetMaterialApp(
            home: Scaffold(
              body: Center(
                child: Text('Error initializing Firebase: ${snapshot.error}'),
              ),
            ),
          );}  
         else {
          return  GetMaterialApp(
            home: QuizApp(),
          );
        }
      },
    );
  }
}

