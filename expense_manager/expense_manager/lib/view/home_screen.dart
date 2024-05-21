import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{  
  final _formKey = GlobalKey<FormState>();

  Future<void> showBottomSheetFun() async {
    await showBottomSheet(//inbuild 
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Create Tassks',
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w800, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Text(
                          'Date',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          // controller: titleController,
                          decoration: InputDecoration(
                              hintText: "11-06-2022",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      width: 3.0,
                                      color: Color.fromRGBO(89, 57, 241, 1))),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular((10))),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                //  width: 3.0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              )),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'amount',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          // controller: titleController,
                          decoration: InputDecoration(
                              hintText: '900',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      width: 3.0,
                                      color: Color.fromRGBO(89, 57, 241, 1))),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular((10))),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                //  width: 3.0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              )),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Category',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          // controller: titleController,
                          decoration: InputDecoration(
                              hintText: "Shopping",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      width: 3.0,
                                      color: Color.fromRGBO(89, 57, 241, 1))),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular((10))),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                //  width: 3.0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              )),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Description',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          // controller: titleController,
                          decoration: InputDecoration(
                              hintText: "Description",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      width: 3.0,
                                      color: Color.fromRGBO(89, 57, 241, 1))),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular((10))),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                //  width: 3.0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              )),
                        ),
                        const SizedBox(height: 15),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 123,
                    margin: const EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(67),
                          ),
                          backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                        ),
                        //  style: const ButtonStyle(
                        //   backgroundColor:MaterialStatePropertyAll(Color.fromRGBO(5, 106, 156, 1))
                        //  ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ]),
          );
        });
  }

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
                    Container(
                      height: 41,
                      width: 41,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(0, 174, 91, 0.7),
                          shape: BoxShape.circle),
                      child: Icon(Icons.shopping_cart),
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
                    const Icon(
                      Icons.remove_circle_rounded,
                      color: Color.fromRGBO(246, 113, 49, 1),
                    ),
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
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(
          Icons.add_circle_sharp,
          size: 32,
          color: Color.fromRGBO(14, 161, 125, 1),
        ),
        label: Text('Add Transaction'),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        onPressed: () {
          
          showBottomSheetFun();
        
        },
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
