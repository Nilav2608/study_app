import 'package:course_app/home_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,required this.showSigninPage});
  final VoidCallback? showSigninPage;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    passwordVisible = true;
    super.initState();
  }

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

                        Text(
                          "Your email",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color.fromARGB(255, 133, 133, 151)),
                        ),
                        //*Email field/////////////////////////////////////////
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 62, 62, 85),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              controller: emailController,
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(115, 255, 255, 255)),
                                hintText: 'Enter your email',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        //*Password field///////////////////////////////////////////////
                        Text(
                          "Password",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color.fromARGB(121, 255, 255, 255)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 62, 62, 85),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              controller: passwordController,
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold),
                              obscureText: passwordVisible,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: const TextStyle(
                                  color: Color.fromARGB(115, 255, 255, 255),
                                ),
                                hintText: 'Enter your password',
                                suffixIcon: IconButton(
                                  color: Color.fromARGB(121, 255, 255, 255),
                                  icon: Icon(passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(
                                      () {
                                        passwordVisible = !passwordVisible;
                                      },
                                    );
                                  },
                                ),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text("Forgot password?",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 184, 184, 210),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const HomeMain();
                            }));
                          },
                          child: Container(
                            width: 327,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 61, 92, 255),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Log In",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            const Text("Don't have an account?",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 184, 184, 210),
                                )),
                            GestureDetector(
                              onTap: widget.showSigninPage,
                              child: const Text(
                                  "Sign Up?",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 61, 92, 255),
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                              child: Divider(
                                color: Color.fromARGB(255, 133, 133, 151),
                                thickness: 1.0,
                              ),
                            ),
                            Text("Or login with",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 184, 184, 210),
                                )),
                            Expanded(
                              child: Divider(
                                color: Color.fromARGB(255, 133, 133, 151),
                                thickness: 1.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Image.asset(
                                "assets/google.png",
                                width: 34,
                                height: 34,
                              ),
                            ),
                            const SizedBox(
                              width: 38,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                "assets/fb.png",
                                width: 34,
                                height: 34,
                              ),
                            )
                          ],
                        )
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
