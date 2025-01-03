import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:webpage/router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController controller;
  bool determinate = false;

  void navigateToLockScreen() {
    Future.delayed(Duration(seconds: 2), () {
      context.pushNamed(Routes.home.name);
    });
  }

  @override
  void initState() {
    navigateToLockScreen();
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/icons/applePerson.jpg',
            height: 300,
            width: 700,
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5,
            width: 250,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(3),
              backgroundColor: Colors.grey,
              color: Colors.white,
              value: controller.value,
              semanticsLabel: 'Linear progress indicator',
            ),
          ),
          Gap(300),
        ],
      ),
    );
  }
}
