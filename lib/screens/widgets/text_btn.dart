import 'package:flutter/material.dart';

class TextBtn extends StatelessWidget {
  const TextBtn({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.textSize,
    required this.textColor,
    required this.onPressed,
    this.color,
  });

  final double width;
  final double height;
  final double textSize;
  final Color textColor;
  final Color? color;
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
