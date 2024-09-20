import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final String text;
  final TextStyle style;
  void Function() onPressed;
   ButtonWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.backgroundColor,
      required this.text,
      required this.style,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(backgroundColor),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
