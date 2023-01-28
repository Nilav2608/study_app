import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 57),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            // Image.asset('assets/illustration2.png'),
            // Lottie.network(
            //     "https://assets5.lottiefiles.com/packages/lf20_arirrjzh.json"),
            Lottie.asset("assets/screen1.json"),
            const SizedBox(
              height: 35,
            ),
            Container(
              height: 66,
              width: 168,
              child: Text(
                "Numerous free trial courses",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 48,
              width: 198,
              child: Text(
                "Free courses for you to find your way to learning",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
