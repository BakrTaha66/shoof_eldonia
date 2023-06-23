import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';
import 'package:shoof_eldonia/config/palette.dart';

import '../../widgets/widget_button.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Shuf Al-Dunya customer service for 24 hours',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Want help with your reservations?',
                    style: TextStyle(
                        color: Palette.textColor2,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Log in to be able to see and select any of the reservations you need to help with it',
                    style: TextStyle(
                      color: Palette.textColor2,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      buttonRegisterSignUp(context, 'Sign In'),
                      const SizedBox(
                        width: 12,
                      ),
                      buttonRegisterSignIn('Send us your inquiry')
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                              AssetsConstants.commentsQuestionIcon),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Your last call with the Shouf Al-Dunya team',
                            style: TextStyle(
                              fontSize: 12,
                              color: Palette.textColor2,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(AssetsConstants.angleDownIcon),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              height: 50,
              color: Palette.iconColor.withOpacity(0.1),
              child: Row(
                children: [
                  SvgPicture.asset(AssetsConstants.headSetIcon),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Do you have any questions',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      buttonRegisterSignIn('Send us your inquiry'),
                      const SizedBox(
                        width: 12,
                      ),
                      buttonRegisterSignIn('Send us your inquiry'),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      buttonRegisterSignIn('Send us your inquiry'),
                      const SizedBox(
                        width: 12,
                      ),
                      buttonRegisterSignIn('Send us your inquiry'),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      buttonRegisterSignIn('Send us your inquiry'),
                      const SizedBox(
                        width: 12,
                      ),
                      buttonRegisterSignIn('Send us your inquiry'),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      buttonRegisterSignIn('Send us your inquiry'),
                      const SizedBox(
                        width: 12,
                      ),
                      buttonRegisterSignIn('Send us your inquiry'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Palette.iconColor,
        child: SvgPicture.asset(AssetsConstants.phoneCallIcon),
      ),
    );
  }
}
