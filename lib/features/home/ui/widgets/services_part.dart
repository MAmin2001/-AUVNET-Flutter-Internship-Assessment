import 'package:auvnet_e_commerce_task/core/helpers/spacing.dart';
import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/styles_manager.dart';
import 'package:auvnet_e_commerce_task/features/home/logic/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesPart extends StatelessWidget {
  const ServicesPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('Services :', style: StylesManager.font20DmSansBoldBlack),
        ),
        verticalSpace(20),
        SizedBox(
          height: 150.h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) => horizontalSpace(13),
                  itemBuilder: (context, index) => ServiceItem(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  const ServiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90.h,
          width: 105.w,
          decoration: BoxDecoration(
            color: ColorsManager.lightGeryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset('assets/images/13 1.png'),
        ),
        Container(
          height: 25.h,
          width: 60.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorsManager.mainColor,
          ),
          child: Center(
            child: Text(
              '20 mins',
              style: StylesManager.font12DmSansMediumWhite,
            ),
          ),
        ),
        Text('Food', maxLines: 2, style: StylesManager.font14DmSansMediumBlack),
      ],
    );
  }
}
