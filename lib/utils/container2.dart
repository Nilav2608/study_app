import 'package:flutter/material.dart';


class CardTwo extends StatelessWidget {
  const CardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Container(
         width: 269,
          height: 164,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 206, 236, 254),
              borderRadius: BorderRadius.circular(20)),
          child: Image.asset('assets/illustration.png'),    
      ),
    );
  }
}