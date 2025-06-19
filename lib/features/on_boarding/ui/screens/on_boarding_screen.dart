import 'package:auvnet_e_commerce_task/core/helpers/constants.dart';
import 'package:auvnet_e_commerce_task/core/helpers/extinstions.dart';
import 'package:auvnet_e_commerce_task/core/routing/routes.dart';
import 'package:auvnet_e_commerce_task/features/on_boarding/ui/widgets/on_boarding_page.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingObject> list = [
    OnBoardingObject(
      title: 'all-in-one delivery ',
      subTitle:
          'Order groceries, medicines, and meals\n delivered straight to your door',
    ),
    OnBoardingObject(
      title: 'User-to-User Delivery',
      subTitle: 'Send or receive items from other users\n quickly and easily',
    ),
    OnBoardingObject(
      title: 'Sales & Discounts',
      subTitle: 'Discover exclusive sales and deals every day',
    ),
  ];
  int currentIndex = 0;
  final PageController _controller = PageController();

  void _navigateToNextPage() {
    if (currentIndex < list.length - 1) {
      currentIndex++;
      _controller.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.pushNamedAndRemoveUntil(
        Routes.loginRoute,
        predicate: (route) => false,
      );
      AppConstants.onBoardingFinished = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        itemCount: list.length,
        itemBuilder:
            (context, index) => OnBoardingPage(
              onBoardingObject: list[index],
              nextOnPressed: () {
                setState(() {
                  _navigateToNextPage();
                });
              },
            ),
      ),
    );
  }
}
