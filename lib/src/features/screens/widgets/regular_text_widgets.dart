import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';

class RegularTextWidgets extends StatelessWidget {
  final String text;
  const RegularTextWidgets({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getRegularStyle(
        color: ColorManager.pinkColor,
        fontSize: FontSize.s16,
      ),
    );
  }
}
