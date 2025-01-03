import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webpage/home/view/homeView.dart';
import 'package:webpage/lockscreen/view/lockscreenView.dart';
import 'package:webpage/splash/view/splashView.dart';

enum Routes { home, splash }

final navigatorKey = GlobalKey<NavigatorState>();

final GoRouter routes = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: Routes.splash.name,
      builder: (context, state) => const Lockscreenview(),
      routes: [
        GoRoute(
          path: 'home',
          name: Routes.home.name,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const HomeView(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.easeIn).animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
  ],
);
