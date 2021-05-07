import 'package:flutter/material.dart';

import 'device_widget.dart';

class Devices extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("4 Devices Available", style: TextStyle(
            fontFamily: "gotham_bold"
          ),),
          Row(
              children: [
                Expanded(flex : 1, child: DeviceWidget("Smart Tv", Icons.airplay)),
                Expanded(flex : 1, child: DeviceWidget("WIFI", Icons.wifi))
              ],
          ),
          Row(
            children: [
              Expanded(flex : 1, child: DeviceWidget("Thermostat", Icons.thermostat_outlined)),
              Expanded(flex : 1, child: DeviceWidget("Light", Icons.lightbulb))
            ],
          )
        ],
      ),
    );
  }

}