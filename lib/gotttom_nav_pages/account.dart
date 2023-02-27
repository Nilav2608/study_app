import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
 void logOut() {
  showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(color: Colors.grey[400]),
          );
        });
    try {
      FirebaseAuth.instance.signOut();
      GoogleSignIn().signOut();
      Navigator.pop(context);
      
    } on FirebaseAuthException catch (e) {
      
      //wrong email
  }
    
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: logOut, icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}