import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:smart_home_app/provider/ChangeTempProvider.dart';

class ButtonController extends StatelessWidget {
  double _height;
  double _width;
  IconData _icons;

  ButtonController(this._height, this._width, this._icons);

  @override
  Widget build(BuildContext context) {
      return Neumorphic(
        padding: const EdgeInsets.all(16),
        style: NeumorphicStyle(
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
            depth: 0,
            lightSource: LightSource.topLeft,
            color: Color(0xFFC9C8C8)),
        child: Icon(_icons),
      );
  }
}
