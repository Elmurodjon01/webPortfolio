import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

Widget dockIcon({
  required ValueNotifier<bool> isHovered,
  required String iconAddress,
  required String label,
}) {
  return Row(
    children: [
      if (label == 'Settings' || label == 'Book')
        Container(
          margin: const EdgeInsets.only(left: 6, right: 9),
          height: 45,
          color: const Color.fromARGB(255, 224, 223, 223),
          width: 1.5,
        ),
      Padding(
        padding: const EdgeInsets.only(right: 2),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            MouseRegion(
              onEnter: (event) {
                isHovered.value = true;
              },
              onExit: (event) {
                isHovered.value = false;
              },
              child: Image.asset(
                iconAddress,
                filterQuality: FilterQuality.high,
                height: 50,
                width: 50,
              ),
            ),
            ValueListenableBuilder<bool>(
              valueListenable: isHovered,
              builder: (context, hovered, child) {
                return Positioned(
                  bottom: 60,
                  child: AnimatedOpacity(
                    opacity: hovered ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 100),
                    child: ClipPath(
                      clipper: MessageClipper(borderRadius: 3),
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          padding: const EdgeInsets.only(
                              bottom: 14, top: 2, left: 9, right: 9),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(3),
                              topRight: Radius.circular(3),
                            ),
                          ),
                          child: Text(
                            label,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ],
  );
}
