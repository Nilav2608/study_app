import 'package:course_app/home_main.dart';
import 'package:course_app/utils/on_board.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class StreamPage extends StatelessWidget {
  const StreamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return  HomeMain();
          } else {
            return  OnboardPage();
          }
        }),
      ),
    );
  }
}
