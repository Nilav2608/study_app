import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 57),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            // Lottie.network(
            //     "https://assets4.lottiefiles.com/packages/lf20_xxyvtiab.json"),
            Lottie.asset(
              "assets/screen2.json",
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 66,
              width: 168,
              child: Text(
                "Quick and easy learning",
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
              height: 72,
              width: 203,
              child: Text(
                "Easy and fast learning at any time to help you improve various skills",
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
