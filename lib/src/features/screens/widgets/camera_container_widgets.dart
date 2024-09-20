import 'package:flutter/material.dart';
import 'package:love_finity/src/core/constants/color_manager.dart';
import 'package:love_finity/src/core/constants/values_manager.dart';

class CameraContainerWidgets extends StatelessWidget {
  const CameraContainerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const EdgeInsets.only(top: AppPadding.p30),
      width: 120,
      height: 115,
      decoration: BoxDecoration(
          color: ColorManager.lavenderBlushColor,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.camera_alt_outlined,
            color: ColorManager.pinkColor.withOpacity(0.4),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.p15,top: AppPadding.p15 ),
            child: Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: ColorManager.whiteColor,
                child: Icon(
                  Icons.add,
                  color: ColorManager.pinkColor,
                  size: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
