import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/asset_manager.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';
import 'package:love_finity/src/features/screens/widgets/text_image_widgets.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

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
                  BorderSide(color: ColorManager.neroColor.withOpacity(0.3)),
                ),
                shape: const WidgetStatePropertyAll(
                  CircleBorder(),
                ),
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
            'Help & Support',
            style: getBoldStyle(
              color: ColorManager.neroColor,
              fontSize: FontSize.s26,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              kSizedBox30,
              Image.asset(ImageAssets.message),
              kSizedBox50,
              const TextImageWidgets(
                text: 'Fun Design Solutions   \nKakkanad, Kochi\nKerala - 682012',
                image: ImageAssets.location,
              ),
              kSizedBox25,
              const TextImageWidgets(
                text: '+91 94007 43624\n+91 75580 31283             ',
                image: ImageAssets.phone,
              ),
              kSizedBox25,
              const TextImageWidgets(
                text: 'info@fundesign.in\nsupport@fundasign.in',
                image: ImageAssets.messageIcon,
              ),
              kSizedBox71,
              Align(
                alignment: Alignment.center,
                child: Image.asset(ImageAssets.logo),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
