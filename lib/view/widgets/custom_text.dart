import 'package:flutter/material.dart';

TextStyle textChooseLanguage(){
  return TextStyle(
    fontSize: 14,
    color: Color(0xff000000),
  );
}


TextStyle textChooseLanguageNote(){
  return TextStyle(
      fontSize: 12,
      color: Color(0xff000000).withOpacity(0.6)
  );
}

TextStyle textTitle(){
  return TextStyle(
      fontSize: 18,
      color: Color(0xff000000),
      fontWeight: FontWeight.w500
  );
}

TextStyle textSubtitle(){
  return TextStyle(
      fontSize: 14,
      color: Color(0xff000000).withOpacity(0.6)
  );
}

// TextStyle textSignIn(){
//   return TextStyle(
//       fontSize: 12,
//       color: Color(0xff004579)
//   );
// }

Text textSignIn(String text) {
  return Text(text,
  style: TextStyle(
    fontSize: 12,
      color: Color(0xff004579)
  ),);
}
TextStyle textSignUp(){
  return TextStyle(
      fontSize: 12,
      color: Color(0xffffffff)
  );
}

TextStyle textContinue(){
  return TextStyle(
      fontSize: 16,
      color: Color(0xffffffff),
      fontWeight: FontWeight.bold
  );
}

TextStyle textSearch(){
  return TextStyle(
      fontSize: 18,
      color: Color(0xffffffff),
      fontWeight: FontWeight.bold
  );
}

TextStyle textSearchAirport(){
  return TextStyle(
      fontSize: 16,
      color: Color(0xff004579),
      fontWeight: FontWeight.bold
  );
}

TextStyle textSignUpG(){
  return TextStyle(
      fontSize: 16,
      color: Color(0xffF14336),
      fontWeight: FontWeight.bold
  );
}

TextStyle textSignUpA(){
  return TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.bold
  );
}


TextStyle textDayUse(){
  return TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.bold
  );
}