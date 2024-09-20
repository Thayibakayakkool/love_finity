import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/asset_manager.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/features/screens/widgets/button_widget.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageAssets.sam), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(ImageAssets.topBorder),
              kSizedBox100,
              kSizedBox71,
              Image.asset(ImageAssets.bottomBorder),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    width: 160,
                    height: 55,
                    backgroundColor: ColorManager.lavenderBlushColor,
                    text: 'Retake',
                    style: getBoldStyle(
                      color: ColorManager.pinkColor,
                      fontSize: FontSize.s18,
                    ),
                    onPressed: () {},
                  ),
                  ButtonWidget(
                    width: 160,
                    height: 55,
                    backgroundColor: ColorManager.pinkColor,
                    text: 'Continue',
                    style: getBoldStyle(
                      color: ColorManager.whiteColor,
                      fontSize: FontSize.s18,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
