import 'package:auvnet_e_commerce_task/core/helpers/spacing.dart';
import 'package:auvnet_e_commerce_task/core/themeing/assets_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortcutsPart extends StatelessWidget {
  const ShortcutsPart({super.key});
  @override
  Widget build(BuildContext context) {
    List<ShortcutItem> shortcutsList = [
      ShortcutItem(image: AssetsManager.pastOrdersImage, title: 'Past orders'),
      ShortcutItem(
        image: AssetsManager.codeComponentImage,
        title: 'Super saver',
      ),
      ShortcutItem(image: AssetsManager.mustTriesImage, title: 'Must-tries'),
      ShortcutItem(image: AssetsManager.givePackImage, title: 'Give Back'),
      ShortcutItem(image: AssetsManager.bestSellerImage, title: 'Best Sellers'),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Shortcuts :', style: StylesManager.font20DmSansBoldBlack),
          verticalSpace(20),
          SizedBox(
            height: 150.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder:
                  (context, index) => ShortcutItem(
                    image: shortcutsList[index].image,
                    title: shortcutsList[index].title,
                  ),
              separatorBuilder: (context, index) => horizontalSpace(10),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

class ShortcutItem extends StatelessWidget {
  const ShortcutItem({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75.h,
          width: 60.w,
          decoration: BoxDecoration(
            color: ColorsManager.lightPinkColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(image),
        ),
        verticalSpace(5),
        Container(
          height: 40.h,
          width: 60.w,
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              title,
              maxLines: 2,
              style: StylesManager.font12DmSansMediumBlack,
            ),
          ),
        ),
      ],
    );
  }
}
