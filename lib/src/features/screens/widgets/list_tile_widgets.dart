import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';

class ListTileWidgets extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  void Function() onTap;

  ListTileWidgets(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(left: AppPadding.p2),
            leading: CircleAvatar(
              backgroundColor: ColorManager.lavenderBlushColor,
              radius: AppSize.s26,
              child: Image.asset(image),
            ),
            title: Text(
              title,
              style: getMediumStyle(
                color: ColorManager.neroColor,
                fontSize: FontSize.s17,
              ),
            ),
            subtitle: Text(
              subTitle,
              style: getRegularStyle(
                color: ColorManager.suvaGreyColor,
                fontSize: FontSize.s13,
              ),
            ),
          ),
          kSizedBox4,
          Divider(
            color: ColorManager.lightGreyColor,
            endIndent: 20,
            indent: 5,
          ),
        ],
      ),
    );
  }
}
