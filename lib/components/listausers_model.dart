import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class ListausersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for pesquisar widget.
  TextEditingController? pesquisarController;
  String? Function(BuildContext, String?)? pesquisarControllerValidator;

  /// Query cache managers for this widget.

  final _useuariosManager = FutureRequestManager<List<UsersRecord>>();
  Future<List<UsersRecord>> useuarios({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersRecord>> Function() requestFn,
  }) =>
      _useuariosManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUseuariosCache() => _useuariosManager.clear();
  void clearUseuariosCacheKey(String? uniqueKey) =>
      _useuariosManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    pesquisarController?.dispose();

    /// Dispose query cache managers for this widget.

    clearUseuariosCache();
  }

  /// Additional helper methods are added here.

}
