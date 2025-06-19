import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AdsSlider extends StatefulWidget {
  const AdsSlider({super.key});

  @override
  _AdsSliderState createState() => _AdsSliderState();
}

class _AdsSliderState extends State<AdsSlider> {
  int _currentIndex = 0;

  final List<String> images = [
    'assets/images/photo_2023-09-03_13-36-55 1.png',
    'assets/images/photo_2023-09-03_13-36-55 1.png',
    'assets/images/photo_2023-09-03_13-36-55 1.png',
    'assets/images/photo_2023-09-03_13-36-55 1.png',
    'assets/images/photo_2023-09-03_13-36-55 1.png',
    'assets/images/photo_2023-09-03_13-36-55 1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIdx) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                images[index],
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              ),
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3), // how often to change slide
            autoPlayAnimationDuration: Duration(
              milliseconds: 800,
            ), // animation duration
            autoPlayCurve: Curves.easeInOut,
            height: 200,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              images.asMap().entries.map((entry) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 4.0,
                    horizontal: 4.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        _currentIndex == entry.key
                            ? ColorsManager.mainColor
                            : ColorsManager.lightGeryColor,
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
