import 'package:flutter/material.dart';

import 'onbording_page.dart';

void main() {
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
      home: const HomePage(),
    );
  }
}
