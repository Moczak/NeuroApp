import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _c1 = prefs.getBool('ff_c1') ?? _c1;
    _c2 = prefs.getBool('ff_c2') ?? _c2;
    _c3 = prefs.getBool('ff_c3') ?? _c3;
    _c4 = prefs.getBool('ff_c4') ?? _c4;
    _c5 = prefs.getBool('ff_c5') ?? _c5;
    _c6 = prefs.getBool('ff_c6') ?? _c6;
    _c7 = prefs.getBool('ff_c7') ?? _c7;
    _c8 = prefs.getBool('ff_c8') ?? _c8;
    _c9 = prefs.getBool('ff_c9') ?? _c9;
    _c10 = prefs.getBool('ff_c10') ?? _c10;
    _d1 = prefs.getBool('ff_d1') ?? _d1;
    _d2 = prefs.getBool('ff_d2') ?? _d2;
    _d3 = prefs.getBool('ff_d3') ?? _d3;
    _d4 = prefs.getBool('ff_d4') ?? _d4;
    _textFromHtmlEditor =
        prefs.getString('ff_textFromHtmlEditor') ?? _textFromHtmlEditor;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _c1 = false;
  bool get c1 => _c1;
  set c1(bool _value) {
    _c1 = _value;
    prefs.setBool('ff_c1', _value);
  }

  bool _c2 = false;
  bool get c2 => _c2;
  set c2(bool _value) {
    _c2 = _value;
    prefs.setBool('ff_c2', _value);
  }

  bool _c3 = false;
  bool get c3 => _c3;
  set c3(bool _value) {
    _c3 = _value;
    prefs.setBool('ff_c3', _value);
  }

  bool _c4 = false;
  bool get c4 => _c4;
  set c4(bool _value) {
    _c4 = _value;
    prefs.setBool('ff_c4', _value);
  }

  bool _c5 = false;
  bool get c5 => _c5;
  set c5(bool _value) {
    _c5 = _value;
    prefs.setBool('ff_c5', _value);
  }

  bool _c6 = false;
  bool get c6 => _c6;
  set c6(bool _value) {
    _c6 = _value;
    prefs.setBool('ff_c6', _value);
  }

  bool _c7 = false;
  bool get c7 => _c7;
  set c7(bool _value) {
    _c7 = _value;
    prefs.setBool('ff_c7', _value);
  }

  bool _c8 = false;
  bool get c8 => _c8;
  set c8(bool _value) {
    _c8 = _value;
    prefs.setBool('ff_c8', _value);
  }

  bool _c9 = false;
  bool get c9 => _c9;
  set c9(bool _value) {
    _c9 = _value;
    prefs.setBool('ff_c9', _value);
  }

  bool _c10 = false;
  bool get c10 => _c10;
  set c10(bool _value) {
    _c10 = _value;
    prefs.setBool('ff_c10', _value);
  }

  bool _d1 = false;
  bool get d1 => _d1;
  set d1(bool _value) {
    _d1 = _value;
    prefs.setBool('ff_d1', _value);
  }

  bool _d2 = false;
  bool get d2 => _d2;
  set d2(bool _value) {
    _d2 = _value;
    prefs.setBool('ff_d2', _value);
  }

  bool _d3 = false;
  bool get d3 => _d3;
  set d3(bool _value) {
    _d3 = _value;
    prefs.setBool('ff_d3', _value);
  }

  bool _d4 = false;
  bool get d4 => _d4;
  set d4(bool _value) {
    _d4 = _value;
    prefs.setBool('ff_d4', _value);
  }

  String _textFromHtmlEditor = '';
  String get textFromHtmlEditor => _textFromHtmlEditor;
  set textFromHtmlEditor(String _value) {
    _textFromHtmlEditor = _value;
    prefs.setString('ff_textFromHtmlEditor', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
