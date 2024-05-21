import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<StatefulWidget> createState() => CategoryScreenState();
}

class CategoryScreenState extends State<CategoryScreen> {
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
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
              padding: EdgeInsets.all(8.0),
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 176, 82),
                        borderRadius: BorderRadius.circular(10.0)),
                    alignment: Alignment.center,
                    child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 135, 92, 4),
                          //borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Icon(Icons.shopping_cart)),
                  ),
                  onTap: () async {
                    await showMyDialog();
                  },
                );
              }),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            fixedSize: MaterialStateProperty.all(Size(166, 48)),
          ),
          child: Row(
            children: [
              Icon(Icons.add_circle),
              Text('Add Category'),
            ],
          ),
        )
      ],
    ));
  }
}
