import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 57),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Log In",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.white),
                  ),
                ),
                Container(
                  width: 375,
                  height: 620,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      color: Color.fromARGB(255, 47, 47, 66)),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        //Email field
                        Text(
                          "Your email",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color.fromARGB(255, 133, 133, 151)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 62, 62, 85),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: TextField(
                              // controller: passwordController,

                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: 'Enter your email'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        //Password field
                        Text(
                          "Password",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color.fromARGB(255, 133, 133, 151)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 62, 62, 85),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: TextField(
                              // controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: 'Enter your password'),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Forgot password?",
                              style: TextStyle( color: Color.fromARGB(255, 184, 184, 210),
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 327,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 61, 92, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
