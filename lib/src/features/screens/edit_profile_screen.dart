import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/asset_manager.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';
import 'package:love_finity/src/features/screens/widgets/button_widget.dart';
import 'package:love_finity/src/features/screens/widgets/camera_container_widgets.dart';
import 'package:love_finity/src/features/screens/widgets/interest_container_widgets.dart';
import 'package:love_finity/src/features/screens/widgets/regular_text_widgets.dart';
import 'package:love_finity/src/features/screens/widgets/text_form_field_widgets.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
            'Edit Profile',
            style: getBoldStyle(
              color: ColorManager.neroColor,
              fontSize: FontSize.s22,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: AppPadding.p16,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p15),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 235,
                          child: Image.asset(
                            ImageAssets.james,
                            fit: BoxFit.cover,
                          )),
                      kSizedW15,
                      Column(
                        children: [
                          const CameraContainerWidgets(),
                          kSizedBox8,
                          const CameraContainerWidgets(),
                        ],
                      ),
                    ],
                  ),
                ),
                kSizedBox8,
                Row(
                  children: [
                    const CameraContainerWidgets(),
                    kSizedW5,
                    const CameraContainerWidgets(),
                    kSizedW5,
                    const CameraContainerWidgets(),
                  ],
                ),
                kSizedBox15,
                const RegularTextWidgets(text: 'Name'),
                kSizedBox4,
                const TextFormFieldWidgets(hintText: 'Sam Walton James'),
                kSizedBox15,
                const RegularTextWidgets(text: 'Email address'),
                kSizedBox4,
                const TextFormFieldWidgets(hintText: 'samwalton@gmail.com'),
                kSizedBox15,
                const RegularTextWidgets(text: 'Phone number'),
                kSizedBox4,
                const TextFormFieldWidgets(hintText: '9854427422'),
                kSizedBox15,
                const RegularTextWidgets(text: 'Bio'),
                kSizedBox4,
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppPadding.p24, left: AppPadding.p4),
                  child: Container(
                    width: 400,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: ColorManager.grey300Color)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: AppPadding.p15, top: AppPadding.p15),
                      child: Text(
                        'Welcome to  the  trove of travel treasures\nfor your Instagram bio! Your bio is like that\nfirst  hit  of fresh  air  on a journey---it sets\nthe tone  and gives  your followers a taste\nof your wanderlust.',
                        style: getRegularStyle(
                            color: ColorManager.neroColor.withOpacity(0.5),
                            fontSize: FontSize.s16),
                      ),
                    ),
                  ),
                ),
                kSizedBox20,
                const RegularTextWidgets(text: 'Gender'),
                kSizedBox4,
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: 0,
                          onChanged: (value) {},
                          fillColor: WidgetStatePropertyAll(
                              ColorManager.suvaGreyColor),
                        ),
                        Text(
                          'Men',
                          style: getRegularStyle(
                              color: ColorManager.suvaGreyColor,
                              fontSize: FontSize.s16),
                        )
                      ],
                    ),
                    kSizedW30,
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 11,
                          backgroundColor: ColorManager.pinkColor,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: ColorManager.whiteColor,
                          ),
                        ),
                        kSizedW5,
                        Text(
                          'Woman',
                          style: getRegularStyle(
                              color: ColorManager.suvaGreyColor,
                              fontSize: FontSize.s16),
                        )
                      ],
                    ),
                    kSizedW30,
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: 2,
                          onChanged: (value) {},
                          fillColor: WidgetStatePropertyAll(
                              ColorManager.suvaGreyColor),
                        ),
                        Text(
                          'Other',
                          style: getRegularStyle(
                              color: ColorManager.suvaGreyColor,
                              fontSize: FontSize.s16),
                        )
                      ],
                    ),
                  ],
                ),
                kSizedBox20,
                const RegularTextWidgets(text: 'Interest'),
                kSizedBox4,
                Padding(
                  padding: const EdgeInsets.only(
                      right: AppPadding.p24, left: AppPadding.p4),
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: ColorManager.grey300Color)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: AppPadding.p10,
                          top: AppPadding.p15,
                          bottom: AppPadding.p15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InterestContainerWidgets(
                                text: 'Music',
                                image: ImageAssets.music,
                                backgroundColor: ColorManager.lightPinkColor,
                                textColor: ColorManager.whiteColor,
                              ),
                              kSizedW5,
                              InterestContainerWidgets(
                                text: 'Football',
                                image: ImageAssets.football,
                                backgroundColor: ColorManager.lightPinkColor,
                                textColor: ColorManager.whiteColor,
                              ),
                              kSizedW5,
                              InterestContainerWidgets(
                                text: 'Explorer',
                                image: ImageAssets.explorer,
                                backgroundColor: ColorManager.lightPinkColor,
                                textColor: ColorManager.whiteColor,
                              ),
                              kSizedW5,
                              InterestContainerWidgets(
                                text: 'Naughty',
                                image: ImageAssets.naughty,
                                backgroundColor: ColorManager.lightPinkColor,
                                textColor: ColorManager.whiteColor,
                              )
                            ],
                          ),
                          kSizedBox10,
                          Row(
                            children: [
                              InterestContainerWidgets(
                                text: 'Sleepy',
                                image: ImageAssets.sleepy,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                              kSizedW5,
                              InterestContainerWidgets(
                                text: 'Travel',
                                image: ImageAssets.travel,
                                backgroundColor: ColorManager.lightPinkColor,
                                textColor: ColorManager.whiteColor,
                              ),
                              kSizedW5,
                              InterestContainerWidgets(
                                text: 'Fashion',
                                image: ImageAssets.fashion,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                              kSizedW5,
                              InterestContainerWidgets(
                                text: 'Party',
                                image: ImageAssets.party,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              )
                            ],
                          ),
                          kSizedBox10,
                          Row(
                            children: [
                              InterestContainerWidgets(
                                text: 'Photography',
                                image: ImageAssets.photography,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                              kSizedW7,
                              InterestContainerWidgets(
                                text: 'Writing',
                                image: ImageAssets.writing,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                              kSizedW7,
                              InterestContainerWidgets(
                                text: 'Games',
                                image: ImageAssets.games,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                            ],
                          ),
                          kSizedBox10,
                          Row(
                            children: [
                              InterestContainerWidgets(
                                text: 'Comedy',
                                image: ImageAssets.comedy,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                              kSizedW7,
                              InterestContainerWidgets(
                                text: 'Movies',
                                image: ImageAssets.movies,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                              kSizedW7,
                              InterestContainerWidgets(
                                text: 'Romance',
                                image: ImageAssets.romance,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                            ],
                          ),
                          kSizedBox10,
                          Row(
                            children: [
                              InterestContainerWidgets(
                                text: 'Mountains',
                                image: ImageAssets.mountain,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                              kSizedW5,
                              InterestContainerWidgets(
                                text: 'Beaches',
                                image: ImageAssets.beaches,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                              kSizedW5,
                              InterestContainerWidgets(
                                text: 'People',
                                image: ImageAssets.people,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                              kSizedW5,
                              InterestContainerWidgets(
                                text: 'Gym',
                                image: ImageAssets.gym,
                                backgroundColor: ColorManager.whiteColor,
                                textColor: ColorManager.neroColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                kSizedBox15,
                const RegularTextWidgets(text: 'Height'),
                kSizedBox4,
                const TextFormFieldWidgets(hintText: '180 cm'),
                kSizedBox15,
                const RegularTextWidgets(text: 'Languages'),
                kSizedBox4,
                const TextFormFieldWidgets(hintText: 'Spanish, English'),
                kSizedBox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonWidget(
                      width: 160,
                      height: 55,
                      backgroundColor: ColorManager.lavenderBlushColor,
                      text: 'Cancel',
                      style: getMediumStyle(
                        color: ColorManager.pinkColor,
                        fontSize: FontSize.s18,
                      ),
                      onPressed: () {},
                    ),
                    ButtonWidget(
                      width: 160,
                      height: 55,
                      backgroundColor: ColorManager.pinkColor,
                      text: 'Apply',
                      style: getBoldStyle(
                        color: ColorManager.whiteColor,
                        fontSize: FontSize.s18,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                kSizedBox20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
