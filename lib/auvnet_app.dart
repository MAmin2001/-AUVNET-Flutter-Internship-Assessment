import 'package:auvnet_e_commerce_task/core/routing/app_router.dart';
import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:auvnet_e_commerce_task/features/auth/ui/screens/login_screen.dart';
import 'package:auvnet_e_commerce_task/features/auth/ui/screens/register_screen.dart';
import 'package:auvnet_e_commerce_task/features/layout/screens/layout_screen.dart';
import 'package:auvnet_e_commerce_task/features/on_boarding/ui/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuvnetApp extends StatelessWidget {
  final AppRouter appRouter;
  const AuvnetApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Auvnet App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainColor,
          scaffoldBackgroundColor: ColorsManager.whiteColor,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.generateRoute,
        home: LoginScreen(),
        //initialRoute: Routes.layoutRoute,
      ),
    );
  }
}
