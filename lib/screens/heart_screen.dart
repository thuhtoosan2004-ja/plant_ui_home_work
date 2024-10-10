import 'package:flutter/material.dart';
import 'package:plant_ui/utils/const.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Center(
        child: Icon(Icons.heart_broken),
      ),
    );
  }
}