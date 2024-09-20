import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/asset_manager.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';

class BottomNavBarWidgets extends StatelessWidget {
  final Widget child;
  const BottomNavBarWidgets({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          AppPadding.p20, 0, AppPadding.p20, AppPadding.p15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(AppSize.s30),
            boxShadow: [
              BoxShadow(
                  color: ColorManager.grey300Color.withOpacity(0.7),
                  blurRadius: 2,
                  spreadRadius: 2)
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSize.s30),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorManager.whiteColor,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    ImageAssets.home,
                    width: 20,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    ImageAssets.direction,
                    width: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    ImageAssets.contact,
                    width: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    ImageAssets.chat,
                    width: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: child,
                  label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
