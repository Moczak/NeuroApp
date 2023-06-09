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

class LinearGraphic extends StatefulWidget {
  const LinearGraphic({
    Key? key,
    this.width,
    this.height,
    required this.faturado,
    required this.despesas,
    required this.metafaturamento,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double faturado;
  final double despesas;
  final double metafaturamento;

  @override
  _LinearGraphicState createState() => _LinearGraphicState();
}

class _LinearGraphicState extends State<LinearGraphic> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SfLinearGauge(
            minimum: 0,
            maximum: widget.metafaturamento,
            barPointers: [
              LinearBarPointer(
                  value: widget.faturado,
                  thickness: 20,
                  color: Color.fromARGB(255, 0, 84, 186),
                  edgeStyle: LinearEdgeStyle.bothCurve,
                  position: LinearElementPosition.outside),
              LinearBarPointer(
                  value: widget.despesas,
                  thickness: 20,
                  color: Colors.redAccent,
                  // Setting offset to move the bar from previos one
                  offset: 30,
                  edgeStyle: LinearEdgeStyle.bothCurve,
                  position: LinearElementPosition.outside),
            ],
          ),
        ),
      ),
    );
  }
}
