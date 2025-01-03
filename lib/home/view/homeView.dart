import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:webpage/helpers/dateHelper.dart';
import 'package:webpage/home/components/menuDock.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ValueNotifier<bool> isHovered = ValueNotifier(false);

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            statusBar(),
            menuDock(context, isHovered),
          ],
        ),
      ),
    );
  }
}

Widget statusBar() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    width: double.infinity,
    height: 30,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 128, 128, 128).withOpacity(
        0.7,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/icons/apple.png',
              filterQuality: FilterQuality.high,
              height: 20,
            ),
            const Gap(20),
            const Text(
              'Chrome',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'File',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Edit',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'View',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'History',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Bookmarks',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Profiles',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Tab',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Window',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Help',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        Row(
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
              'assets/icons/controlCenter.png',
              filterQuality: FilterQuality.high,
              height: 15,
            ),
            const Gap(20),
            Text(
              dateFormat.format(DateTime.now()),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        )
      
      
      ],
    ),
  );
}
