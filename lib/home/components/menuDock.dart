import 'package:flutter/material.dart';
import 'package:webpage/home/components/dockIcon.dart';
import 'package:webpage/home/data/data.dart';

Widget menuDock(BuildContext context, ValueNotifier<bool> isHovered) {
  return Container(
    height: 100,
    width: MediaQuery.of(context).size.width / 1.30,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/components/dock.png'),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...dockContents.map(
          (d) => dockIcon(
            isHovered: d.isHovered as ValueNotifier<bool>,
            iconAddress: d.iconAddress,
            label: d.label,
          ),
        )
      ],
    ),
  );
}
