import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class Lockscreenview extends StatefulWidget {
  const Lockscreenview({super.key});

  @override
  State<Lockscreenview> createState() => _LockscreenviewState();
}

class _LockscreenviewState extends State<Lockscreenview> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
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
                  const Text(
                    'ABC',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(3),
                  const Icon(
                    Icons.keyboard_alt_outlined,
                    color: Colors.white,
                    size: 14,
                  ),
                  const Gap(20),
                  Image.asset(
                    'assets/icons/battery.png',
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
            ),
            Expanded(child: Container()),
            Text(
              DateFormat('EEEE, MMMM d').format(DateTime.now()),
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              DateFormat('h:mm').format(DateTime.now()),
              style: const TextStyle(
                fontSize: 120,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
            Expanded(flex: 8, child: Container()),
            Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                ),
                const Gap(15),
                const Text(
                  'User',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Gap(10),
                Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1.0,
                      ),
                      cursorHeight: 16,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        hintText: 'Enter Username',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(flex: 3, child: Container()),
          ],
        ),
      ),
    );
  }
}
