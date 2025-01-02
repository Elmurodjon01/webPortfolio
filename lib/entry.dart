import 'package:flutter/material.dart';
import 'package:webpage/home/view/homeView.dart';
import 'package:webpage/splash/view/splashView.dart';

class Entry extends StatelessWidget {
  const Entry({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
