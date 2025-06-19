import 'package:auvnet_e_commerce_task/core/helpers/spacing.dart';
import 'package:auvnet_e_commerce_task/core/themeing/assets_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularRestaurantsPart extends StatelessWidget {
  const PopularRestaurantsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular restaurants nearby',
            style: StylesManager.font20DmSansBoldBlack,
          ),
          verticalSpace(20),
          SizedBox(
            height: 170.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => PopularRestaurantItem(),
              separatorBuilder: (context, index) => horizontalSpace(10),
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}

class PopularRestaurantItem extends StatelessWidget {
  const PopularRestaurantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: ColorsManager.whiteColor,
            border: Border.all(
              color: ColorsManager.lightGeryColor.withOpacity(0.7),
              width: 1.2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(AssetsManager.nawelAppLogo1x),
        ),
        verticalSpace(8),
        Text('Rstaurant', style: StylesManager.font12DmSansMediumBlack),
        Row(
          children: [
            Icon(
              Icons.watch_later_outlined,
              size: 20,
              color: ColorsManager.lightGeryColor,
            ),
            horizontalSpace(5),
            Text('32 mins', style: StylesManager.font12DmSansMediumBlack),
          ],
        ),
      ],
    );
  }
}
