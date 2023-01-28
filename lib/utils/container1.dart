import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardOne extends StatelessWidget {
  const CardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: 269,
        height: 164,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 206, 236, 254),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New to this App?",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text("Try Free trial!"),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 31,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(child: Text("Get Started")),
                  ),
                ],
              ),
              Container(
                width: 100,
                height: 100,
                // color: Colors.blue,
                child: Image.asset('assets/Group 131.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
