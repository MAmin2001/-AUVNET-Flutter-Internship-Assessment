import 'package:auvnet_e_commerce_task/core/helpers/spacing.dart';
import 'package:auvnet_e_commerce_task/core/themeing/assets_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GotACodePart extends StatelessWidget {
  const GotACodePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 100.h,
        decoration: BoxDecoration(
          color: ColorsManager.whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.lightGeryColor,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(AssetsManager.codeComponentImage),
            horizontalSpace(5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Got a code !',
                  style: StylesManager.font14DmSansBoldBlack,
                ),
                Text(
                  'Add your code and save \non your order',
                  maxLines: 2,
                  style: StylesManager.font10DmSansMediumGrey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
