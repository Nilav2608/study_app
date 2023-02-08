import 'package:course_app/login_signUp/login_page.dart';
import 'package:course_app/login_signUp/signin_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // bool get showLoginPage => showLoginPage;

  bool showLoginPage = true;

  void toogleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        showSigninPage: toogleScreen,
      );
    } else {
      return SignInPage(
        showRegisterPage: toogleScreen,
      );
    }
  }
}
