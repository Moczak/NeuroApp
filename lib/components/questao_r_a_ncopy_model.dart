import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class QuestaoRANcopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for itemII widget.
  TextEditingController? itemIIController;
  String? Function(BuildContext, String?)? itemIIControllerValidator;
  AudioPlayer? soundPlayer;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    itemIIController?.dispose();
  }

  /// Additional helper methods are added here.

}
