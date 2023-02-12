import 'package:course_app/utils/container1.dart';
import 'package:course_app/utils/container2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(255, 61, 92, 255),
        //   elevation: 0,
        // ),
        // drawer: const Drawer(
        //     child: Icon(Icons.menu,color: Colors.white,),

        //     ),
        backgroundColor: const Color.fromARGB(255, 31, 31, 57),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //app Bar
            Container(
                color: const Color.fromARGB(255, 61, 92, 255),
                height: 183,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Kristen",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Text("Let's Start Learning Today",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(223, 255, 255, 255),
                                )),
                          ],
                        ),
                      ),
                      Image.asset("assets/ava1.png")
                    ],
                  ),
                )),
            //Progress Indicator
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                height: 96,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(146, 184, 184, 210),
                          blurRadius: 10.0,
                          offset: Offset(0, 3))
                    ],
                    color: const Color.fromARGB(255, 47, 47, 66),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Learned Today",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color:
                                    const Color.fromARGB(255, 184, 184, 210)),
                          ),
                          Text(
                            "My Courses",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: const Color.fromARGB(255, 61, 92, 255)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "46min",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "/60min",
                            style: GoogleFonts.poppins(
                                color: const Color.fromARGB(255, 184, 184, 210),
                                fontSize: 10),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      LinearPercentIndicator(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        animation: true,
                        barRadius: const Radius.circular(5),
                        animationDuration: 1500,
                        percent: 0.7,
                        lineHeight: 6,
                        linearGradient: const LinearGradient(
                            colors: [Color(0xffFFFFFF), Color(0xffFF5106)]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //Crosal slider
            // const SizedBox(  height: 5,),
            // ignore: sized_box_for_whitespace
            Container(
              height: 164,
              // width: 269,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [CardOne(), CardTwo(), CardOne()],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Learning Path text
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Learning Plan",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, color: Colors.white),
                )),
            const SizedBox(
              height: 20,
            ),
            //Progress  Circular Bar container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 133,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(146, 184, 184, 210),
                          blurRadius: 12.0,
                          offset: Offset(0, 3))
                    ],
                    color: const Color.fromARGB(255, 47, 47, 66),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 18.0, right: 18.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircularPercentIndicator(
                                    radius: 12.0,
                                    lineWidth: 4.0,
                                    percent: 0.80,
                                    backgroundColor: Colors.white,
                                    progressColor: Colors.grey,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text("Learning Plan",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.white)),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircularPercentIndicator(
                                    radius: 12.0,
                                    lineWidth: 4.0,
                                    percent: 0.20,
                                    backgroundColor: Colors.white,
                                    progressColor: Colors.grey,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text("Learning Plan",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.white)),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "40",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "/48",
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(
                                            255, 184, 184, 210)),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "40",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "/48",
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(
                                            255, 184, 184, 210)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Center(
                        child: Text("More",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromARGB(255, 61, 93, 255))),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 133,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 239, 224, 255),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Meetup",
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      color:
                                          const Color.fromARGB(255, 68, 6, 135),
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  " for Off-line learning",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color:
                                          const Color.fromARGB(255, 68, 6, 135),
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 90,
                              height: 90,
                              child: Image.asset('assets/Group 145.png'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )));
  }
}
