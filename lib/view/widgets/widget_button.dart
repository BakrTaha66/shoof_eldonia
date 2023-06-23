
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';
import 'package:shoof_eldonia/view/screens/signin_signup_screen.dart';

import 'custom_button.dart';
import 'custom_text.dart';

Widget buttonRegisterSignIn(String text) => Expanded(
  child: SizedBox(
    height: 45,
    width: double.infinity,
    child:   ElevatedButton(
        onPressed: (){},
        style: buttonSignIn(),
        child: textSignIn(text)),
  ),
);

Widget buttonRegisterSignUp(BuildContext context, String text) => Expanded(
  child: SizedBox(
    height: 45,
    width: double.infinity,
    child: ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInSignUpScreen()));
    },
        style: buttonSignUp(),
        child: Text(text,
          style: textSignUp(),)),
  ),
);

Widget buttonLanguage(String text) => ElevatedButton(
    onPressed: (){},
    style: buttonChooseLanguage(),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Text(
        text,
        style: textChooseLanguage(),
      ),
      Padding(
        padding: EdgeInsets.only(left: 115),
        child: Icon(Icons.check,
          color: Colors.green,),
      )
    ],
  ),
);

Widget buttonSearch(String text) => ElevatedButton(onPressed: (){},
    style: buttonSearchStyle(),
    child: Text(text,
      style: textSearch(),));

Widget buttonDayUse(String text) => ElevatedButton(onPressed: (){},
    style: buttonDayUseStyle(),
    child: Text(text,
      style: textDayUse(),));

Widget buttonSearchAirport(String text) => ElevatedButton(onPressed: (){},
    style: buttonSearchAirportStyle(),
    child: Text(text,
      style: textSearchAirport(),));

Widget buttonSignUpWithGoogle(String text) => ElevatedButton(onPressed: (){},
    style: buttonSignUpGoogle(),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(AssetsConstants.search,)),
        Text(
          text,
          style: textSignUpG(),
        ),
      ],
    ),);

Widget buttonSignUpWithApple(String text) => ElevatedButton(onPressed: (){},
  style: buttonSignUpApple(),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(AssetsConstants.apple,)),
      Text(
        text,
        style: textSignUpA(),
      ),
    ],
  ),);

Widget textButtonChooseCountry(String text, String img) => Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Text(text,
      style: TextStyle(
          color: Colors.black,
          fontSize: 12
      ),),
    SizedBox(width: 10,),
    Image.asset(img,
      width: 24,
      height: 24,
      fit: BoxFit.contain,),
  ],
);