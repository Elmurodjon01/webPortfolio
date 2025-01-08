import 'package:flutter/material.dart';

Container lockTextField(TextEditingController controller, String hintText,
    void Function(String)? onSubmitted) {
  return Container(
    height: 30,
    width: 150,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.4),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Center(
      child: TextField(
        obscureText: hintText.contains('Password'),
        onSubmitted: onSubmitted,
        controller: controller,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          height: 1.0,
        ),
        cursorHeight: 16,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: 1,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 13,
          ),
          // suffixIcon: hintText.contains('Password')
          //     ? Image.asset(
          //         'assets/icons/arrowRight.png',
          //         height: 5,
          //         filterQuality: FilterQuality.high,
          //         width: 5,
          //         fit: BoxFit.contain,
          //       )
          //     : null,
        ),
      ),
    ),
  );
}
