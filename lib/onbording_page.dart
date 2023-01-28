import 'package:course_app/intor_screen/get_started.dart';
import 'package:course_app/intor_screen/page_one.dart';
import 'package:course_app/intor_screen/page_two.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [PageOne(), PageTwo(), GetStartedPage()],
          ),
          Container(
              alignment: const Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  onLastPage
                      ? const Text("")
                      : GestureDetector(
                          onTap: () {
                            controller.jumpToPage(2);
                          },
                          child: Text(
                            "Skip",
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                            ),
                          )),
                  SmoothPageIndicator(
                    
                    controller: controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                        dotHeight: 5,
                        dotWidth: 9,
                        activeDotColor: Color.fromARGB(250, 61, 93, 255),
                        dotColor: Color.fromARGB(255, 133, 133, 151)),
                  ),
                  onLastPage
                      ? const Text('')
                      : GestureDetector(
                          onTap: () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            "Next",
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                            ),
                          ),
                        )
                ],
              ))
        ],
      ),
    );
  }
}
