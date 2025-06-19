import 'package:auvnet_e_commerce_task/core/routing/routes.dart';
import 'package:auvnet_e_commerce_task/features/auth/logic/bloc/auth_bloc.dart';
import 'package:auvnet_e_commerce_task/features/auth/ui/screens/login_screen.dart';
import 'package:auvnet_e_commerce_task/features/auth/ui/screens/register_screen.dart';
import 'package:auvnet_e_commerce_task/features/home/ui/screens/home_screen.dart';
import 'package:auvnet_e_commerce_task/features/layout/screens/layout_screen.dart';
import 'package:auvnet_e_commerce_task/features/on_boarding/ui/screens/on_boarding_screen.dart';
import 'package:auvnet_e_commerce_task/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => AuthBloc(),
                child: LoginScreen(),
              ),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case Routes.layoutRoute:
        return MaterialPageRoute(builder: (_) => const LayoutScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder:
          (_) => Scaffold(
            appBar: AppBar(title: Text('Not Found')),
            body: Center(child: Text('This Route Not Found')),
          ),
    );
  }
}
