import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/asset_manager.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';
import 'package:love_finity/src/features/screens/widgets/bottom_nav_bar_widgets.dart';
import 'package:love_finity/src/features/screens/widgets/image_container_widgets.dart';

class LikedPostScreen extends StatelessWidget {
  const LikedPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorManager.whiteColor,
          leading: Container(
            margin: const EdgeInsets.symmetric(horizontal: AppMargin.m4),
            padding:
                const EdgeInsets.only(left: AppPadding.p8, top: AppPadding.p10),
            child: IconButton(
              padding: const EdgeInsets.only(left: AppPadding.p8),
              style: ButtonStyle(
                side: WidgetStatePropertyAll(
                    BorderSide(color: ColorManager.neroColor.withOpacity(0.3))),
                shape: const WidgetStatePropertyAll(CircleBorder()),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: AppSize.s20,
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            'Liked Posts',
            style: getBoldStyle(
              color: ColorManager.neroColor,
              fontSize: FontSize.s26,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              kSizedBox12,
              const ImageContainerWidgets(
                image1: ImageAssets.image1,
                image2: ImageAssets.music,
                text1: 'Music',
                quote:
                    'If you could live anywhere in the\nworld, where would you pick?',
                image3: ImageAssets.miranda,
                name: 'Miranda Kehlani',
                text2: 'STUTTGART',
              ),
              kSizedBox10,
              const ImageContainerWidgets(
                image1: ImageAssets.image2,
                image2: ImageAssets.football,
                text1: 'Football',
                quote: 'Who do you think will win Euro\n2020?',
                image3: ImageAssets.brandon,
                name: 'Brandon Aminoff',
                text2: 'HAMBURG',
              ),
              kSizedBox30,
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBarWidgets(
          child: Image.asset(
            ImageAssets.pinkSettings,
            width: 25,
          ),
        ),
      ),
    );
  }
}
