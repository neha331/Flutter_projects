import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            
                children: [
                  const SizedBox(height:60),
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/images/expense_logo.svg',
              height: 70,
              width: 70,
            ),
          ),
          const SizedBox(height:60),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '    Login to your Account',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height:20),
          Form(
            child: Column(
              children: [
                
                 Container(
                  height: 49,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      offset:Offset(0,3),
                      spreadRadius: 0,
                      blurRadius: 10,
                    )
                  ]
                ),
                   child: TextFormField(
                    decoration:  InputDecoration(
                      enabled:false,
                      // border: OutlineInputBorder(
                      //    //  borderRadius:BorderRadius.all(Radius.circular((10))),
                      // ),
                        hintText: "Username",
                        // focusedBorder: OutlineInputBorder(
                           //borderRadius: BorderRadius.circular(132),
                        //   borderSide: BorderSide(
                           // width: 2.0,
                           // color:Color.fromRGBO(89,57,241,1)
                          )
                         ),
                   // ),
                    
                                  // ),
                 ),
                const SizedBox(
                   height:15,
                 ),
                 Container(
                  height: 49,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      offset:Offset(0,3),
                      spreadRadius: 0,
                      blurRadius: 10,
                    )
                  ]
                ),
                   child: TextFormField(
                    decoration:  InputDecoration(
                      enabled:false,
                      // border: OutlineInputBorder(
                      //    //  borderRadius:BorderRadius.all(Radius.circular((10))),
                      // ),
                        hintText: "Password",
                        // focusedBorder: OutlineInputBorder(
                           //borderRadius: BorderRadius.circular(132),
                        //   borderSide: BorderSide(
                           // width: 2.0,
                           // color:Color.fromRGBO(89,57,241,1)
                          )
                         ),
                   // ),
                    
                                  // ),
                 ),
                const SizedBox(
                   height:25,
                 ),
                 
                 ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 11, 145, 91)),
                    fixedSize: MaterialStateProperty.all(Size(280, 49)),
                   shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), 
     
    )),
                  
                  ),
                  onPressed: ()
                 {}, child: Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color:Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                 ),
              ],
            )
          ),
          SizedBox(height:210),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Sign up',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(14, 161, 125, 1),
                    ),
                  ),
                ],
              ),
     ],
              ),
        ));
  }
}
