import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/asset_manager.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';
import 'package:love_finity/src/features/screens/widgets/button_widget.dart';

class DeleteScreen extends StatelessWidget {
  const DeleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorManager.whiteColor,
      content: SizedBox(
        height: 430,
        child: Padding(
          padding: const EdgeInsets.only(
              top: AppPadding.p22, bottom: AppPadding.p15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: AppSize.s60,
                backgroundColor: ColorManager.lavenderBlushColor,
                child: CircleAvatar(
                  radius: AppSize.s40,
                  backgroundColor: ColorManager.pinkColor,
                  child: Image.asset(ImageAssets.delete),
                ),
              ),
              kSizedBox40,
              Text(
                'Are you sure?',
                style: getBoldStyle(
                  color: ColorManager.neroColor,
                  fontSize: FontSize.s22,
                ),
              ),
              kSizedBox8,
              Text(
                "There's no going back once\n  you delete your account!!",
                style: getRegularStyle(
                  color: ColorManager.neroColor,
                  fontSize: FontSize.s14,
                ),
              ),
              kSizedBox30,
              ButtonWidget(
                  width: 320,
                  height: 50,
                  backgroundColor: ColorManager.pinkColor,
                  text: 'Yes, Delete my account',
                  style: getBoldStyle(
                    color: ColorManager.whiteColor,
                    fontSize: FontSize.s17,
                  ),
                  onPressed: () {}),
              kSizedBox12,
              ButtonWidget(
                  width: 320,
                  height: 50,
                  backgroundColor: ColorManager.lavenderBlushColor,
                  text: 'No, go back',
                  style: getMediumStyle(
                    color: ColorManager.pinkColor,
                    fontSize: FontSize.s17,
                  ),
                  onPressed: () {}),
              kSizedBox12,
            ],
          ),
        ),
      ),
    );
  }
}
