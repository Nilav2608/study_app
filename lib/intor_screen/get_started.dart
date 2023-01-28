import 'package:course_app/home_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 57),
      // backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 85,
            ),
            // Image.asset('assets/illustration3.png'),
            // Lottie.network(
            //     "https://assets5.lottiefiles.com/packages/lf20_fq7pwzey.json"),
            Lottie.asset("assets/screen3.json"),

            const SizedBox(
              height: 65,
            ),
            Container(
              height: 66,
              width: 168,
              child: Text(
                "Create your own study plan",
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
              width: 190,
              child: Text(
                "Study according to the study plan, make study more motivated",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomeMain();
                }));
              },
              child: Container(
                width: 160,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 61, 92, 255),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
