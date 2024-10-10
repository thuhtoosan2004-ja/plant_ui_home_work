import 'package:flutter/material.dart';
import 'package:plant_ui/utils/const.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Center(
        child: Icon(Icons.person),
      ),
    );
  }
}