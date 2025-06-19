import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/fonts_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTransparentTextButton extends StatelessWidget {
  const CustomTransparentTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.fontWeight,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          color: color ?? ColorsManager.geryColor,
          fontFamily: FontConstants.rubikFontFamily,
          fontWeight: fontWeight ?? FontWeightManager.regular,
        ),
      ),
    );
  }
}
