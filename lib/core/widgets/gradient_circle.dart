import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientCircle extends StatelessWidget {
  const GradientCircle({super.key, this.child, this.height, this.width});
  final Widget? child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.h ?? 335.h,
      width: width?.w ?? 335.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
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
      child: child,
    );
  }
}
