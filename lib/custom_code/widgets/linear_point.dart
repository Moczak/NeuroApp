// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_gauges/gauges.dart';

class LinearPoint extends StatefulWidget {
  const LinearPoint({
    Key? key,
    this.width,
    this.height,
    required this.pontos,
    required this.proximonivel,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double pontos;
  final double proximonivel;

  @override
  _LinearPointState createState() => _LinearPointState();
}

class _LinearPointState extends State<LinearPoint> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SfLinearGauge(
            showTicks: false,
            axisTrackStyle: LinearAxisTrackStyle(thickness: 15),
            minimum: 0,
            maximum: widget.proximonivel,
            barPointers: [
              LinearBarPointer(
                  value: widget.pontos,
                  thickness: 20,
                  color: Colors.redAccent,
                  edgeStyle: LinearEdgeStyle.bothCurve),
              // Setting offset to move the bar from previos one
              //offset: 5,
              //edgeStyle: LinearEdgeStyle.bothCurve,
              //position: LinearElementPosition.outside),
            ],
          ),
        ),
      ),
    );
  }
}
