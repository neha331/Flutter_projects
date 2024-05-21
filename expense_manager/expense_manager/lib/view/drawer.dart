import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerForScreens extends StatefulWidget {
  const DrawerForScreens({super.key});

  @override
  State<StatefulWidget> createState() => DrawerForScreensState();
}

class DrawerForScreensState extends State<DrawerForScreens> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("hi")
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Expense Manager',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Text(
                'Saves all your Transactions',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 10),
              ),
              SizedBox(height:20),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/Subtract.svg',
                    height: 8,
                    width: 8,
                  ),
                  Text(
                    'Transaction',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  ), 
                ],
              ),
              SizedBox(height:20),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/graph.svg',
                    height: 8,
                    width: 8,
                  ),
                  Text(
                    'Graphs',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  ), 
                ],
              ),
              SizedBox(height:20),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/category.svg',
                    height: 8,
                    width: 8,
                  ),
                  Text(
                    'Categorys',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  ), 
                ],
              ),
              SizedBox(height:20),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/trash.svg',
                    height: 8,
                    width: 8,
                  ),
                  Text(
                    'Trassh',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  ), 
                ],
              ),
              SizedBox(height:20),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/about_us.svg',
                    height: 8,
                    width: 8,
                  ),
                  Text(
                    'about Us',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  ), 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
