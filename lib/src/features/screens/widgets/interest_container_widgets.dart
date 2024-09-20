import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';

class InterestContainerWidgets extends StatelessWidget {
  final String text;
  final String image;
  final Color backgroundColor;
  final Color textColor;

  const InterestContainerWidgets(
      {super.key,
      required this.text,
      required this.image,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p8, vertical: AppPadding.p8),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(AppSize.s18),
          border: Border.all(color: ColorManager.lightPinkColor)),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 11,
          ),
          kSizedW5,
          Text(
            text,
            style: getMediumStyle(
              color: textColor,
              fontSize: FontSize.s12,
            ),
          )
        ],
      ),
    );
  }
}
