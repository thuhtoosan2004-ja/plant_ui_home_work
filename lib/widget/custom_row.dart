import 'package:flutter/material.dart';
import 'package:plant_ui/utils/const.dart';

class customrow extends StatelessWidget {
   customrow({
    super.key,
    required this.text
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 30,),
        Stack(
          children: [
            Text(text),
            Positioned(
              top: 19,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(color: Colors.green,))
          ],
        ),
        Spacer(),
        SizedBox(
          height: 30,
          width: 85,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: appColor,
              foregroundColor: Colors.white
            ),
            onPressed: (){}, child: Text("More")),
        ),
        SizedBox(width: 30,),
      ],
    );
  }
}

