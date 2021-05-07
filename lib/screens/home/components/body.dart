import 'package:flutter/material.dart';
import 'package:smart_home_app/screens/home/components/controller.dart';
import 'package:smart_home_app/screens/home/components/header.dart';

import 'devices.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF9E9E9E),
              const Color(0xff9e9e9e),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Header(),
          SizedBox(
            height: 30,
          ),
          ControllerWidget(),
          SizedBox(
            height: 30,
          ),
          Devices()
        ],
      ),
    );
  }
}
