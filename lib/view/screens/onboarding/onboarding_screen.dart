import 'package:flutter/material.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';
import 'package:shoof_eldonia/view/screens/onboarding/onboarding_animation.dart';
import 'package:shoof_eldonia/view/widgets/custom_button.dart';
import 'package:shoof_eldonia/view/widgets/custom_text.dart';

import '../../../config/dimens.dart';
import '../../widgets/widget_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController pageController = PageController();

  List<Widget> pages = [
    OnBoardingAnimation(image: AssetsConstants.on1,txtTitle: "Your journey starts here", txtDescription: "Search over 450 airlines and over 600,000 hotelsaround the world "),
    OnBoardingAnimation(image: AssetsConstants.on2,txtTitle: "Easier booking, secure payment methods", txtDescription: "Manage your bookings more easily "),
    OnBoardingAnimation(image: AssetsConstants.on3,txtTitle: "start now", txtDescription: "Create an account, or log in to your account Watch the world or follow up as a guest "),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: Dimens.screenHeight(context) * 0.8,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: pages.length,
                  onPageChanged: (newIndex) {
                    setState(() {
                      index = newIndex;
                    });
                  },
                  itemBuilder: (context, index) => pages[index],
                ),
              ),
              Positioned(
                bottom: 20,
                child: SizedBox(
                  height: 10,
                  width: 50,
                  child: ListView.separated(
                    itemCount: pages.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) => dotWidget(index),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonRegisterSignUp(context,'Sign Up'),
                SizedBox(width: 12,),
                buttonRegisterSignIn('Sign In')
              ],
            ),
          )
        ],
      ),
    );
  }



  Widget dotWidget(int val) => Container(
    height: 10,
    width: 10,
    decoration: BoxDecoration(
      color: val == index
          ? Color(0xffFFFFFF)
          : Color(0xffFFFFFF).withOpacity(0.2),
      shape: BoxShape.circle
    ),
  );
}
