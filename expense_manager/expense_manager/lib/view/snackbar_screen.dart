import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SnackbarScreen extends StatefulWidget {
  const SnackbarScreen({super.key});

  @override
  State<StatefulWidget> createState() => SnackbarScreenState();
}

class SnackbarScreenState extends State<SnackbarScreen> {
 Future<dynamic> showMyDialog() async {
    return await showDialog(
     context: context,
     //barrierColor: Colors.black54,
     //barrierDismissible: false,
    builder: (BuildContext context) {
    return AlertDialog(
    title: const Text("Delete Category"),

    content: const Text(
    "Are you sure you want to delete the selected category?",

    ),
    actions: [
      ElevatedButton(
         onPressed: () {
            Navigator.of(context).pop();
         },
         child: const Text("Delete"),
       ),
       ElevatedButton(
         onPressed: () {
            Navigator.of(context).pop();
            
         },
         child: const Text("Cancel"),
       ),
    ] ,
  );
},
);
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("hi")
      ),
      body: const Center(
child: Text("Incubators"),
),
      floatingActionButton: FloatingActionButton(
onPressed: () async {
await showMyDialog();
},
child: const Text("Delete "),)
    );
  }
}
