// import 'package:course_app/gotttom_nav_pages/account.dart';
import 'package:course_app/gotttom_nav_pages/account.dart';
import 'package:course_app/gotttom_nav_pages/courses.dart';
import 'package:course_app/gotttom_nav_pages/home.dart';
import 'package:course_app/gotttom_nav_pages/message.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
   int _currentPage = 0;
  final List<Widget> _pages = const [
    HomePage(),
    SearchPage(),
    MessagePage(),
    AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
        // backgroundColor: const Color.fromARGB(255, 31, 31, 57),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: const Color.fromARGB(255, 37, 37, 38) ,
        //   child: const Icon(Icons.search),
        // ),
        bottomNavigationBar: Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 31, 31, 57),
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(20), topRight: Radius.circular(20))
          ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          backgroundColor: const Color.fromARGB(255, 31, 31, 57),
          color: const Color.fromARGB(255, 184, 184, 210),
          activeColor: const Color.fromARGB(255, 61, 92, 255),
          padding: const EdgeInsets.all(8.0),
          tabBackgroundColor: Colors.grey,
          onTabChange: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          // selectedIndex: _currentPage,
          gap: 4,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.message,
              text: 'Message',
            ),
            GButton(
              icon: Icons.person,
              text: 'Account',
            )
          ],
        ),
      ),
    ));
  }
}


