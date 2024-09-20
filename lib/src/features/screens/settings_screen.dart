import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/asset_manager.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/constants.dart';
import 'package:love_finity/src/core/constants/font_manager.dart';
import 'package:love_finity/src/core/constants/style_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';
import 'package:love_finity/src/core/utils/utils.dart';
import 'package:love_finity/src/features/screens/delete_screen.dart';
import 'package:love_finity/src/features/screens/edit_profile_screen.dart';
import 'package:love_finity/src/features/screens/help_screen.dart';
import 'package:love_finity/src/features/screens/liked_post_screen.dart';
import 'package:love_finity/src/features/screens/logout_screen.dart';
import 'package:love_finity/src/features/screens/photo_screen.dart';
import 'package:love_finity/src/features/screens/widgets/bottom_nav_bar_widgets.dart';
import 'package:love_finity/src/features/screens/widgets/button_widget.dart';
import 'package:love_finity/src/features/screens/widgets/list_tile_widgets.dart';
import 'package:love_finity/src/features/screens/write_to_us_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                size: AppSize.s20,
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            'Settings',
            style: getBoldStyle(
              color: ColorManager.neroColor,
              fontSize: FontSize.s26,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: AppPadding.p24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                kSizedBox25,
                Row(
                  children: [
                    const CircleAvatar(
                      radius: AppSize.s35,
                      backgroundImage: AssetImage(ImageAssets.nazrul),
                    ),
                    kSizedW12,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Nazrul Islam, 22',
                              style: getBoldStyle(
                                color: ColorManager.pinkColor,
                                fontSize: FontSize.s24,
                              ),
                            ),
                            kSizedW10,
                            Image.asset(ImageAssets.blueTickMark),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const EditProfileScreen(),
                                ));
                          },
                          child: Text(
                            'Edit Profile',
                            style: getRegularStyle(
                              color: ColorManager.greyColor,
                              fontSize: FontSize.s14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                kSizedBox25,
                ListTileWidgets(
                  title: 'Request Verification',
                  subTitle: 'Upload your selfie and get verified.',
                  image: ImageAssets.pinkTickMark,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PhotoScreen(),
                        ));
                  },
                ),
                ListTileWidgets(
                  title: 'Liked Blogs',
                  subTitle: "Blogs you've added to your favorites.",
                  image: ImageAssets.favorite,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LikedPostScreen(),
                        ));
                  },
                ),
                ListTileWidgets(
                  title: 'Delete Account',
                  subTitle: 'Delete your current account permanently.',
                  image: ImageAssets.pinkDelete,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => const DeleteScreen(),
                    );
                  },
                ),
                ListTileWidgets(
                  title: 'Write to us',
                  subTitle: 'Contact us for any queries.',
                  image: ImageAssets.write,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WriteToUsScreen(),
                        ));
                  },
                ),
                ListTileWidgets(
                  title: 'Help and Support',
                  subTitle: 'Get yourself help and support.',
                  image: ImageAssets.headphone,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HelpScreen(),
                        ));
                  },
                ),
                kSizedBox10,
                Align(
                  alignment: Alignment.center,
                  child: ButtonWidget(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.07,
                    backgroundColor: ColorManager.pinkColor,
                    text: 'Logout',
                    style: getBoldStyle(
                      color: ColorManager.whiteColor,
                      fontSize: FontSize.s18,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const LogoutScreen(),
                      );
                    },
                  ),
                ),
                kSizedBox30,
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBarWidgets(
         child:  CircleAvatar(
              radius: AppSize.s15,
              backgroundColor: ColorManager.pinkColor,
              child: Image.asset(
                ImageAssets.settings,
                width: 14,
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
