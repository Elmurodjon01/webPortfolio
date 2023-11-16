import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _pageState = 1;
  int get pageState => _pageState;
  set pageState(int value) {
    _pageState = value;
  }

  int _projectIndex = 0;
  int get projectIndex => _projectIndex;
  set projectIndex(int value) {
    _projectIndex = value;
  }

  bool _changeColor = false;
  bool get changeColor => _changeColor;
  set changeColor(bool value) {
    _changeColor = value;
  }

  bool _aboutColor = false;
  bool get aboutColor => _aboutColor;
  set aboutColor(bool value) {
    _aboutColor = value;
  }

  bool _skillsColor = false;
  bool get skillsColor => _skillsColor;
  set skillsColor(bool value) {
    _skillsColor = value;
  }

  bool _projectsColor = false;
  bool get projectsColor => _projectsColor;
  set projectsColor(bool value) {
    _projectsColor = value;
  }

  bool _contactColor = false;
  bool get contactColor => _contactColor;
  set contactColor(bool value) {
    _contactColor = value;
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
