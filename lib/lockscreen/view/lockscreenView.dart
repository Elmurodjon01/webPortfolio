import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Lockscreenview extends StatefulWidget {
  const Lockscreenview({super.key});

  @override
  State<Lockscreenview> createState() => _LockscreenviewState();
}

class _LockscreenviewState extends State<Lockscreenview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/walpapers/blueWalpaper.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/icons/wifi.png',
                  filterQuality: FilterQuality.high,
                  height: 15,
                ),
                const Gap(20),
                Image.asset(
                  'assets/icons/search.png',
                  filterQuality: FilterQuality.high,
                  height: 15,
                ),
                const Gap(20),
                Image.asset(
                  'assets/icons/profile.png',
                  filterQuality: FilterQuality.high,
                  height: 15,
                ),
                const Gap(20),
                Image.asset(
                  'assets/icons/wifi.png',
                  filterQuality: FilterQuality.high,
                  height: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
