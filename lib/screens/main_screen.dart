import 'package:flutter/material.dart';
import 'package:plant_ui/screens/heart_screen.dart';
import 'package:plant_ui/screens/home_screen.dart';
import 'package:plant_ui/screens/person_screen.dart';
import 'package:plant_ui/utils/const.dart';

class MainScreen extends StatefulWidget {
   MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    HomeScreen(),
    HeartScreen(),
    PersonScreen()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor:appColor,
        onTap: (value){
            setState(() {
              currentIndex = value;
            });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.start),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.heart_broken),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
      ]),
    );
  }
}