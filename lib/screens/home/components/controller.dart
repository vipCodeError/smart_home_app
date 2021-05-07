import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_home_app/provider/ChangeTempProvider.dart';
import 'package:smart_home_app/screens/home/components/button_controller.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ControllerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeTempProvider>(builder: (context, temp, child) {
      double progressValue = temp.currentTemp.toDouble();
      return Container(
        height: 300,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.convex,
                      boxShape: NeumorphicBoxShape.circle(),
                      depth: -8,
                      lightSource: LightSource.topLeft,
                      color: Colors.grey),
                  child: SfRadialGauge(axes: <RadialAxis>[
                    RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        showLabels: false,
                        showTicks: false,
                        startAngle: 270,
                        endAngle: 270,
                        axisLineStyle: AxisLineStyle(
                          thickness: 0.2,
                          thicknessUnit: GaugeSizeUnit.factor,
                          color: Color.fromARGB(30, 0, 169, 181),
                        ),
                        pointers: <GaugePointer>[
                          RangePointer(
                            value: progressValue,
                            width: 0.15,
                            color: Colors.white,
                            pointerOffset: 0.02,
                            cornerStyle: CornerStyle.bothCurve,
                            sizeUnit: GaugeSizeUnit.factor,
                          ),
                          MarkerPointer(
                              value: progressValue,
                              markerType: MarkerType.circle,
                              color: const Color(0xff0c132a),
                              markerWidth: 20,
                              markerHeight: 20)
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              positionFactor: 0.1,
                              angle: 90,
                              widget: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "TEMPERATURE",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "gotham_bold"),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    progressValue.toStringAsFixed(0) + '\u2103',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: "gotham_medium"),
                                  ),
                                ],
                              ))
                        ])
                  ]),
                ),
              ),
            ),
            Positioned(
                left: 20,
                child: InkWell(
                  child: ButtonController(60.0, 60.0, Icons.add),
                  onTap: () {
                    temp.add();
                  },
                )),
            Positioned(
                right: 25,
                bottom: 0,
                child: InkWell(
                  child: ButtonController(60.0, 60.0, Icons.remove),
                  onTap: () {
                    temp.remove();
                  },
                ))
          ],
        ),
      );
    });
  }
}
