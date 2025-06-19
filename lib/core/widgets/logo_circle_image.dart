import 'package:auvnet_e_commerce_task/core/themeing/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoCircleImage extends StatelessWidget {
  const LogoCircleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 336.h,
      width: 336.w,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Image.asset(AssetsManager.nawelAppLogo1x),
    );
  }
}
