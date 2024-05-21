import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TrashScreen extends StatefulWidget {
  TrashScreen({super.key});
  State createState() => TrashScreenState();
}

class TrashScreenState extends State<TrashScreen>{  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            height: 61,
            width: 361,
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.remove_circle_rounded,
                      color: Color.fromRGBO(171, 166, 164, 1),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shopping',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Lorem Ipsum is simply',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    
                    const Text('500'),
                    const SizedBox(width: 10),
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      '3 June | 11:50 AM',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
     
    );
  }
}
