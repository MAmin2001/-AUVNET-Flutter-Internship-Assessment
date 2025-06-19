import 'package:auvnet_e_commerce_task/core/helpers/spacing.dart';
import 'package:auvnet_e_commerce_task/core/themeing/assets_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            ColorsManager.mainColor,
            ColorsManager.pinkColor,
            ColorsManager.yellowColor,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivering to',
                  style: StylesManager.font12DmSansBoldBlack,
                ),
                verticalSpace(4),
                Text(
                  'Al Satwa, 81A Street',
                  style: StylesManager.font16DmSansBoldBlack,
                ),
                verticalSpace(8),
                Text('Hi hepa!', style: StylesManager.font30BoldRubikWhite),
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(AssetsManager.avatarImage),
            ),
          ],
        ),
      ),
    );
  }
}
