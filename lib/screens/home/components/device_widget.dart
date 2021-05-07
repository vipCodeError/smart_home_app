

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DeviceWidget extends StatefulWidget{
  String _deviceTitle;
  IconData _iconData;

  DeviceWidget(this._deviceTitle, this._iconData);

  @override
  State<StatefulWidget> createState() {
    return DeviceWidgetState(_deviceTitle, _iconData);
  }

}
class DeviceWidgetState  extends State<DeviceWidget>{
  String _deviceTitle;
  IconData _iconData;
  bool switchToggle = false;

  DeviceWidgetState(this._deviceTitle, this._iconData);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8)
      ),

      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            depth: 2,
            surfaceIntensity: 0.25,
            shadowLightColor: Color(0xffa3a3a3),
            lightSource: LightSource.topLeft,
            color: Color(0x8DD4D4D4)
        ),
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(_iconData),
                  NeumorphicSwitch(
                    height: 20,
                    value: switchToggle,
                    style: NeumorphicSwitchStyle(
                      disableDepth: false,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.grey,
                      activeThumbColor: Colors.white,
                      inactiveThumbColor: Colors.black45
                    ),
                    onChanged: (isChanged) {
                      changeToggle();
                    },
                  ),
                ],
              ),
              SizedBox(height: 60,),
              Text(_deviceTitle, style: TextStyle(
                  fontFamily: "gotham_medium"
              ),)
            ],
          ),
        ),
      ),
    );
  }

  void changeToggle(){
    setState(() {
      if(switchToggle){
        switchToggle = false;
      }else {
        switchToggle = true;
      }

    });
  }

}