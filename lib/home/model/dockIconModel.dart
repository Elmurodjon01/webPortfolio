import 'package:flutter/material.dart';

class DockContentModel {
  final ValueNotifier isHovered;
  final String iconAddress;
  final String label;
  DockContentModel({
    required this.isHovered,
    required this.iconAddress,
    required this.label,
  });
}
