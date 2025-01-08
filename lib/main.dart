import 'package:flutter/material.dart';
import 'package:webpage/entry.dart';
import 'package:webpage/helpers/prefs.dart';
import 'package:webpage/locator.dart';

late Map<String, dynamic> isFirstTime;

void main() async {
  setUp();
  isFirstTime = await getIt.get<Storage>().getUserCred();
  runApp(const Entry());
}
