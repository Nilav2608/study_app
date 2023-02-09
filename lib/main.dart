import 'package:course_app/Auth_service/stream_builder_file.dart';
import 'package:course_app/utils/on_board.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Auth_service/firebase_options.dart';

// import 'onbording_page.dart';
int? initScreen;
Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen =  prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // appBarTheme: AppBarTheme(backgroundColor:  Color.fromARGB(255, 31, 31, 57),)
      ),
      // home: isViewed != 0 ? OnboardPage() : StreamPage(),
      initialRoute: initScreen == 0 || initScreen == null? "onBoard" : 'home',
      routes: {
        'home' : (context) => const StreamPage(),
        'onBoard' :(context) => const OnboardPage()
      },
    );
  }
}
