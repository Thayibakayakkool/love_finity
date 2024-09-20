import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';
import 'package:love_finity/src/core/utils/utils.dart';

class ImageContainerWidgets extends StatelessWidget {
  final String image1;
  final String image2;
  final String text1;
  final String quote;
  final String image3;
  final String name;
  final String text2;

  const ImageContainerWidgets(
      {super.key,
      required this.image1,
      required this.image2,
      required this.text1,
      required this.quote,
      required this.image3,
      required this.name,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    final screenSize = Utils().getScreenSize(context);

    return Padding(
      padding:
          const EdgeInsets.only(left: AppPadding.p15, right: AppPadding.p10),
      child: Stack(
        children: [
          ClipRect(
            child: Container(
              width: screenSize.width*0.93,
              height: screenSize.height*0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s24),
              ),
              child: Image.asset(
                image1,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p15,
                top: AppPadding.p20,
                right: AppPadding.p28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p10, vertical: AppPadding.p7),
                  decoration: BoxDecoration(
                      color: ColorManager.whiteColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          color: ColorManager.whiteColor.withOpacity(0.4))),
                  child: Row(
                    children: [
                      Image.asset(
                        image2,
                        width: 12,
                      ),
                      kSizedW5,
                      Text(
                        text1,
                        style: getMediumStyle(
                          color: ColorManager.neroColor,
                          fontSize: FontSize.s13,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        color: ColorManager.whiteColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: ColorManager.whiteColor.withOpacity(0.4))),
                    child: Icon(
                      Icons.favorite,
                      color: ColorManager.pinkColor,
                      size: 19,
                    ),
                  ),
                ),
              ],
            ),
          ),
          kSizedBox18,
          Positioned(
            bottom: 80,
            left: 15,
            child: Text(
              quote,
              style: getSemiBoldStyle(
                color: ColorManager.whiteColor,
                fontSize: FontSize.s22,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 15,
            child: Row(
              children: [
                CircleAvatar(
                  radius: AppSize.s22,
                  backgroundImage: AssetImage(image3),
                ),
                kSizedW12,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: getSemiBoldStyle(
                        color: ColorManager.whiteColor,
                        fontSize: FontSize.s17,
                      ),
                    ),
                    Text(
                      text2,
                      style: getMediumStyle(
                        color: ColorManager.whiteColor,
                        fontSize: FontSize.s12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
