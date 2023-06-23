import 'package:flutter/material.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';

import '../../../config/dimens.dart';

class OnBoardingAnimation extends StatelessWidget {
  // final String path;
  final String image;
  final String txtTitle;
  final String txtDescription;

  const OnBoardingAnimation({
    // required this.path,
    required this.image,
    required this.txtTitle,
    required this.txtDescription,
  });


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(image,
        width: double.infinity,
        fit: BoxFit.cover,),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(txtTitle,
                textAlign: TextAlign.center,
                style: TextStyle(

                    fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
              SizedBox(
                height: 20,
              ),
              Text(txtDescription,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white),)
            ],
          ),
        )
      ],
    );
  }


}
