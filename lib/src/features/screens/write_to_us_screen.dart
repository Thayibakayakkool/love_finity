import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/asset_manager.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';
import 'package:love_finity/src/core/utils/utils.dart';
import 'package:love_finity/src/features/screens/widgets/button_widget.dart';
import 'package:love_finity/src/features/screens/widgets/regular_text_widgets.dart';
import 'package:love_finity/src/features/screens/widgets/text_form_field_widgets.dart';

class WriteToUsScreen extends StatelessWidget {
  const WriteToUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = Utils().getScreenSize(context);

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
            'Write to us',
            style: getBoldStyle(
              color: ColorManager.neroColor,
              fontSize: FontSize.s22,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: AppPadding.p16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kSizedBox15,
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(ImageAssets.message)),
                kSizedBox25,
                const RegularTextWidgets(text: 'Name'),
                kSizedBox5,
                const TextFormFieldWidgets(hintText: 'Sam Walton James'),
                kSizedBox18,
                const RegularTextWidgets(text: 'Email'),
                kSizedBox5,
                const TextFormFieldWidgets(hintText: 'Sam Walton James'),
                kSizedBox15,
                const RegularTextWidgets(text: 'Message'),
                kSizedBox5,
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppPadding.p24, left: AppPadding.p4),
                  child: Container(
                    width: 400,
                    //height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: ColorManager.grey300Color)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: AppPadding.p15,
                          top: AppPadding.p15,
                          bottom: AppPadding.p15),
                      child: Text(
                        '"Neque porro quisquam est qui dolorem\nipsum quia dolor sit amet, consectetur,\nadipisci velit..."\n"There is no one who loves pain itself, who\nseeks after it and wants to have it, simply\nbecause it is pain..."',
                        style: getRegularStyle(
                            color: ColorManager.neroColor.withOpacity(0.5),
                            fontSize: FontSize.s16),
                      ),
                    ),
                  ),
                ),
                kSizedBox20,
                Align(
                  alignment: Alignment.center,
                  child: ButtonWidget(
                      width: screenSize.width * 0.8,
                      height: screenSize.height * 0.07,
                      backgroundColor: ColorManager.pinkColor,
                      text: 'Send query',
                      style: getBoldStyle(
                        color: ColorManager.whiteColor,
                        fontSize: FontSize.s18,
                      ),
                      onPressed: () {}),
                ),
                kSizedBox30,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
