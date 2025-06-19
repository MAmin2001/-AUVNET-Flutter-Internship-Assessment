import 'dart:async';

import 'package:auvnet_e_commerce_task/core/routing/routes.dart';
import 'package:auvnet_e_commerce_task/core/themeing/assets_manager.dart';
import 'package:auvnet_e_commerce_task/core/widgets/gradient_circle.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(Duration(seconds: 3), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GradientCircle(child: Image.asset(AssetsManager.splashImage4x)),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
