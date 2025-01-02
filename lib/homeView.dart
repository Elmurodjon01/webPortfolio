import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/walpapers/walpaper.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          menuDock(context),
        ],
      ),
    );
  }
}

Widget menuDock(BuildContext context) {
  return Container(
    height: 100,
    width: MediaQuery.of(context).size.width / 1.1,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/components/dock.png'),
      ),
    ),
    child: Row(
      children: [
        SvgPicture.asset(
          'assets/icons/finder.svg',
          height: 100,
          width: 100,
        )
      ],
    ),
  );
}
