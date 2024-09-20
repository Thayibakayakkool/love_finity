import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';

class TextFormFieldWidgets extends StatelessWidget {
  final String hintText;

  const TextFormFieldWidgets({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: AppPadding.p24, left: AppPadding.p4),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: getRegularStyle(
              color: ColorManager.neroColor.withOpacity(0.5),
              fontSize: FontSize.s14),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
            borderSide: BorderSide(color: ColorManager.grey300Color),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
            borderSide: BorderSide(color: ColorManager.grey300Color),
          ),
        ),
      ),
    );
  }
}
