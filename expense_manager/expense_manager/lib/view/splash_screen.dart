import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      children: [
        const Spacer(flex: 4),
        Center(
          child: Container(
            height: 144,
            width: 144,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(234, 238, 235, 1),
              shape: BoxShape.circle,
            ),
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/images/expense_logo.svg',
                height: 58.82,
                width: 69.76,
              ),
            ),
          ),
        ),
        const Spacer(flex: 3),
        Text(
          'Expense Manager',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        const Spacer(flex: 1),
      ],
    ));
  }
}
