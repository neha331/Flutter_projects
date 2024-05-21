import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              height: 58.82,
              width: 69.76,
            ),
          ),
          const SizedBox(height:50),
         
          Padding(
            padding: const EdgeInsets.only(left:14,),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                  'Create your Account',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
            ),
          ),
          
          const SizedBox(
            height: 20,
          ),
          Form(
              child: Column(
            children: [
              SizedBox(
                height: 49,
                width: 280,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border:  OutlineInputBorder(
                        //  borderRadius:BorderRadius.all(Radius.circular((10))),
                        ),
                    hintText: "Name",
                    focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(12),
                        borderSide:  BorderSide(
                            width: 2.0, color: Color.fromRGBO(89, 57, 241, 1))),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      offset:Offset(12,45),
                      spreadRadius: 0.6,
                      blurRadius: 3.15,
                    )
                  ]
                ),
                
                width: 280,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border:  OutlineInputBorder(
                        //  borderRadius:BorderRadius.all(Radius.circular((10))),
                        ),
                    hintText: "Username",
                    focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            width: 2.0, color: Color.fromRGBO(89, 57, 241, 1))),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 49,
                width: 280,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border:  OutlineInputBorder(
                        //  borderRadius:BorderRadius.all(Radius.circular((10))),
                        ),
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            width: 2.0, color: Color.fromRGBO(89, 57, 241, 1))),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 49,
                width: 280,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border:  OutlineInputBorder(
                        //  borderRadius:BorderRadius.all(Radius.circular((10))),
                        ),
                    hintText: "Confirm password",
                    focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            width: 2.0, color: Color.fromRGBO(89, 57, 241, 1))),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:const  MaterialStatePropertyAll(
                      Color.fromARGB(255, 11, 145, 91)),
                  fixedSize: MaterialStateProperty.all(Size(280,49)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), 
                  )),
                ),
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                ),
              ),
              SizedBox(height:140),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Sign in',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(14, 161, 125, 1),
                    ),
                  ),
                ],
              ),
            ],
          )),
          const SizedBox(height:10),
        ],
      ),
    ));
  }
}
