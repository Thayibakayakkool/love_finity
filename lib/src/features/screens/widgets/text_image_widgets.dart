import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';

class TextImageWidgets extends StatelessWidget {
  final  String text;
  final  String image;
  const TextImageWidgets({super.key,required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: ColorManager.lavenderBlushColor,
          radius: AppSize.s26,
          child: Image.asset(image),
        ),
        kSizedW15,
        Text(
          text,
          style: getRegularStyle(
              color: ColorManager.blackColor, fontSize: FontSize.s18),
        )
      ],
    );
  }
}
