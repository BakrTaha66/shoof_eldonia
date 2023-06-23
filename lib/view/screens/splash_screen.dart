import 'package:flutter/material.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';
import '../../config/dimens.dart';
import 'LanguageScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => const LanguageScreen(),
        ), (route) => false,
    );

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(AssetsConstants.splashImage,
      height: Dimens.screenHeight(context),
      fit: BoxFit.fitWidth,),
    );
  }
}
