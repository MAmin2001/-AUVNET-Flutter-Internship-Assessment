import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:auvnet_e_commerce_task/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key, list});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [HomeScreen()];

  final List<BottomNavigationBarItem> _bottomNavItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/images/nawel 7.svg',
        height: 25,
        width: 20,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.grid_view_outlined),
      label: 'Categories',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.delivery_dining_outlined),
      label: 'Deliver',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outlined),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25.0,
        fixedColor: ColorsManager.mainColor,
        selectedIconTheme: IconThemeData(
          size: 30.0,
          color: ColorsManager.mainColor,
        ),
        selectedFontSize: 14.0,
        backgroundColor: ColorsManager.whiteColor,
        unselectedItemColor: ColorsManager.darkGeryColor,
        items: _bottomNavItems,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: _pages[_selectedIndex],
    );
  }
}
