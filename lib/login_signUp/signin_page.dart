import 'package:course_app/login_signUp/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key, required this.showRegisterPage});
  final VoidCallback? showRegisterPage;
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool passwordVisible = false;
  // bool showRegisterPage = true;
  bool isChecked = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void initState() {
    passwordVisible = true;
    super.initState();
  }
    Future signUserUp() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
          
    }
    // ignore: use_build_context_synchronously
    Navigator.pop(context);
    
  }

  // / checking
  bool passwordConfirmed() {
    if (passwordController.text == confirmPasswordController.text) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  // toggleSwitch() {
  //   setState(() {
  //     showRegisterPage = !showRegisterPage;
  //   });
  // }

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
                    "Sign Up",
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
                    padding: const EdgeInsets.all(20.0),
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
                                hintText: 'enter your email',
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
                                hintText: 'enter your password',
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
                        const SizedBox(height: 20),
                        Text(
                          "Conform Password",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color.fromARGB(121, 255, 255, 255)),
                        ),
                        //*confirm password field      ////////////////////////////////////////////
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 62, 62, 85),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              controller: confirmPasswordController,
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold),
                              obscureText: passwordVisible,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(115, 255, 255, 255),
                                ),
                                hintText: 'comfirm your password',
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: signUserUp,
                          child: Container(
                            width: 327,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 61, 92, 255),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Create account",
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
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                            ),
                            SizedBox(
                              height: 36,
                              width: 253,
                              child: Text(
                                "By creating an account you have to agree the terms and conditions",
                                style: GoogleFonts.poppins(
                                    color: const Color.fromARGB(255, 184, 184, 210),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
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
                            const Text("Already have an account?",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 184, 184, 210),
                                )),
                            GestureDetector(
                              onTap: widget.showRegisterPage,
                              child: const Text("Log In?",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 61, 92, 255),
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          Color.fromARGB(255, 61, 92, 255))),
                            )
                          ],
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
