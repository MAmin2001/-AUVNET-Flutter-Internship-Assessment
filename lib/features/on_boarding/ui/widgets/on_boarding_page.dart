import 'package:auvnet_e_commerce_task/core/helpers/extinstions.dart';
import 'package:auvnet_e_commerce_task/core/helpers/spacing.dart';
import 'package:auvnet_e_commerce_task/core/routing/routes.dart';
import 'package:auvnet_e_commerce_task/core/themeing/styles_manager.dart';
import 'package:auvnet_e_commerce_task/core/widgets/custom_app_text_button.dart';
import 'package:auvnet_e_commerce_task/core/widgets/custom_white_text_button.dart';
import 'package:auvnet_e_commerce_task/core/widgets/gradient_circle.dart';
import 'package:auvnet_e_commerce_task/core/widgets/logo_circle_image.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({
    super.key,
    this.onBoardingObject,
    required this.nextOnPressed,
  });

  OnBoardingObject? onBoardingObject;
  final VoidCallback nextOnPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: -106,
          top: -23,
          child: GradientCircle(height: 342, width: 342),
        ),
        Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoCircleImage(),
                verticalSpace(85),
                Text(
                  onBoardingObject?.title ?? '',
                  style: StylesManager.font28MediumRubikDarkGrey,
                ),
                verticalSpace(11),
                Text(
                  onBoardingObject?.subTitle ?? '',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: StylesManager.font14RegularRubikGrey,
                ),
                verticalSpace(52),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: CustomAppTextButton(
                    text: 'Get Started',
                    onPressed: () {
                      context.pushNamedAndRemoveUntil(
                        Routes.loginRoute,
                        predicate: (route) => false,
                      );
                    },
                  ),
                ),
                verticalSpace(14),
                CustomTransparentTextButton(
                  text: 'next',
                  onPressed: nextOnPressed,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class OnBoardingObject {
  final String title;
  final String subTitle;

  OnBoardingObject({required this.title, required this.subTitle});
}
