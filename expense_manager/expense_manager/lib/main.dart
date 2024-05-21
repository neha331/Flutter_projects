import 'package:expense_manager/view/category_screen.dart';
import 'package:expense_manager/view/drawer.dart';
import 'package:expense_manager/view/home_screen.dart';
import 'package:expense_manager/view/pie.dart';
import 'package:expense_manager/view/register_screen.dart';
import 'package:expense_manager/view/signin_screen.dart';
import 'package:expense_manager/view/snackbar_screen.dart';
import 'package:expense_manager/view/splash_screen.dart';
import 'package:expense_manager/view/trash_screen.dart';

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:GraphScreen(),
        // appBar: AppBar(
        // leading: GestureDetector(
        //   child: const Icon(Icons.menu,
          
        //   ),
        //   onTap: (){
            
        //     // Navigate to the DetailsScreen using Navigator.push
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const DrawerForScreens()),
        //     );
          
         // },
       // ),
     //   title: const Text('June 2022'),
      //  actions: [Icon(Icons.search)],
   //   ),
       
    //  )
    );
  }
}
