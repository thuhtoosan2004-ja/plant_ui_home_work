import 'package:flutter/material.dart';
import 'package:plant_ui/utils/const.dart';

class Hearder extends StatelessWidget {
  const Hearder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
              color: appColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Hi Uishopy!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              CircleAvatar(
                child: Image.asset(
                  appLogo,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
        Positioned(
            top: 120,
            left: 20,
            bottom: -25,
            right: 20,
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Serach",suffixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}