// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:animated_text_kit/animated_text_kit.dart';

class NewCustomWidget extends StatefulWidget {
  const NewCustomWidget({
    Key? key,
    this.width,
    this.height,
    this.animatingText,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? animatingText;

  @override
  _NewCustomWidgetState createState() => _NewCustomWidgetState();
}

class _NewCustomWidgetState extends State<NewCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 100.0),
        const SizedBox(width: 20),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 47.0,
            fontFamily: 'Horizon',
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          child: AnimatedTextKit(
            totalRepeatCount: 100,
            animatedTexts: [
              RotateAnimatedText('Mobile'),
              RotateAnimatedText('Desktop'),
              RotateAnimatedText('Web'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ],
    );
  }
}
