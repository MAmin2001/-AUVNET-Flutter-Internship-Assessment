import 'package:auvnet_e_commerce_task/core/helpers/spacing.dart';
import 'package:auvnet_e_commerce_task/features/home/logic/bloc/home_bloc.dart';
import 'package:auvnet_e_commerce_task/features/home/ui/widgets/ads_slider.dart';
import 'package:auvnet_e_commerce_task/features/home/ui/widgets/got_a_code_part.dart';
import 'package:auvnet_e_commerce_task/features/home/ui/widgets/popular_restaurants_part.dart';
import 'package:auvnet_e_commerce_task/features/home/ui/widgets/services_part.dart';
import 'package:auvnet_e_commerce_task/features/home/ui/widgets/shortcuts_part.dart';
import 'package:auvnet_e_commerce_task/features/layout/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              verticalSpace(6),
              ServicesPart(),
              verticalSpace(20),
              GotACodePart(),
              verticalSpace(20),
              ShortcutsPart(),
              verticalSpace(20),
              AdsSlider(),
              verticalSpace(20),
              PopularRestaurantsPart(),
            ],
          ),
        ),
      ),
    );
  }
}
