import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/cart/presentation/views/cart_view.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/profile/presentation/views/profile_view.dart';
import 'package:dalel/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

PersistentTabController _persistentTabController = PersistentTabController();

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _persistentTabController,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: AppColors.primaryColor, // Default is Colors.white.
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      decoration: NavBarDecoration(
        colorBehindNavBar: AppColors.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
      ),
      // navBarStyle: _navBarStyle, // Choose the nav bar style with this property
    );
  }
}

List<Widget> _buildScreens() {
  return [HomeView(), CartView(), SearchView(), ProfileView()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: ("Home"),
      activeColorPrimary: AppColors.secondaryColor,
      inactiveColorPrimary: AppColors.inactiveIconColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.shopping_cart),
      title: ("Cart"),
      activeColorPrimary: AppColors.secondaryColor,
      inactiveColorPrimary: AppColors.inactiveIconColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.search),
      title: ("Search"),
      activeColorPrimary: AppColors.secondaryColor,
      inactiveColorPrimary: AppColors.inactiveIconColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      title: ("Profile"),
      activeColorPrimary: AppColors.secondaryColor,
      inactiveColorPrimary: AppColors.inactiveIconColor,
    ),
  ];
}
