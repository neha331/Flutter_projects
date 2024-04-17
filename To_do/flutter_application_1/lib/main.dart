import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/to_do_app.dart';

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
          return const  MaterialApp(
            title:'To Do App',
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Text('Error initializing Firebase: ${snapshot.error}'),
              ),
            ),
          );}  
         else {
          return const MaterialApp(
            home: ToDoApp(),
          );
        }
      },
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/to_do_app.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'ToDo APP',
//       debugShowCheckedModeBanner: false,
//       home: ToDoApp(),
//     );
//   }
// }
