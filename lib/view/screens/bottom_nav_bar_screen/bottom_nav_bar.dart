import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';
import 'package:shoof_eldonia/config/palette.dart';
import 'package:shoof_eldonia/view/screens/bottom_nav_bar_screen/help_screen.dart';
import 'package:shoof_eldonia/view/screens/bottom_nav_bar_screen/profile_screen.dart';
import 'package:shoof_eldonia/view/screens/bottom_nav_bar_screen/trips_screen.dart';

import 'home_screen.dart';

class BottomNavBar extends StatefulWidget {


  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        HomeScreen(),
        TripsScreen(),
        HelpScreen(),
        ProfileScreen()
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AssetsConstants.homeIcon,
          color: Palette.iconColor,

          ),
          inactiveIcon: SvgPicture.asset(
            AssetsConstants.homeIcon,
            color: Colors.grey,
          ),
          title: 'Home',
          textStyle: TextStyle(
            fontSize: 12
          ),
          activeColorPrimary: Palette.textColor2,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AssetsConstants.calendarIcon,
            color: Palette.iconColor,

          ),
          inactiveIcon: SvgPicture.asset(
            AssetsConstants.calendarIcon,
            color: Colors.grey,
          ),
          title: 'Trips',
          textStyle: TextStyle(
              fontSize: 12
          ),
          activeColorPrimary: Palette.textColor2,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AssetsConstants.interrogationIcon,
            color: Palette.iconColor,

          ),
          inactiveIcon: SvgPicture.asset(
            AssetsConstants.interrogationIcon,
            color: Colors.grey,
          ),
          title: 'Help',
          textStyle: TextStyle(
              fontSize: 12
          ),
          activeColorPrimary: Palette.textColor2,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AssetsConstants.userIcon,
            color: Palette.iconColor,

          ),
          inactiveIcon: SvgPicture.asset(
            AssetsConstants.userIcon,
            color: Colors.grey,
          ),
          title: 'Profile',
          textStyle: TextStyle(
              fontSize: 12
          ),
          activeColorPrimary: Palette.textColor2,
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    PersistentTabController controller;
    controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: controller,
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
      navBarHeight: 70,
    );
  }
}