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

class FaturamentoWidget extends StatefulWidget {
  const FaturamentoWidget({
    Key? key,
    this.width,
    this.height,
    required this.faturado,
    required this.meta,
    required this.faturaescrita,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double faturado;
  final double meta;
  final String faturaescrita;

  @override
  _FaturamentoWidgetState createState() => _FaturamentoWidgetState();
}

class _FaturamentoWidgetState extends State<FaturamentoWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Container(
                  child: SfRadialGauge(
                      enableLoadingAnimation: true,
                      animationDuration: 4500,
                      axes: <RadialAxis>[
            RadialAxis(
                interval: 1000,
                axisLineStyle: AxisLineStyle(
                  thickness: 0.1,
                  thicknessUnit: GaugeSizeUnit.factor,
                  color: Color.fromARGB(255, 252, 202, 0),
                ),
                minimum: 0,
                maximum: widget.meta,
                pointers: <GaugePointer>[
                  NeedlePointer(value: widget.faturado),
                  RangePointer(
                      value: widget.faturado,
                      width: 0.1,
                      color: Color.fromARGB(255, 194, 0, 0),
                      sizeUnit: GaugeSizeUnit.factor)
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Container(
                          child: Text(widget.faturaescrita,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))),
                      angle: 90,
                      positionFactor: 0.5)
                ])
          ])))),
    );
  }
}
