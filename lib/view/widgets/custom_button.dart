import 'package:flutter/material.dart';


ButtonStyle buttonChooseLanguage(){
  return ElevatedButton.styleFrom(
    fixedSize: Size(165, 30),
    side: BorderSide(
      width: 1.0,
      color: Color(0xff004579)
    ),
    backgroundColor: Color(0xffFFFFFF)
  );
}

ButtonStyle buttonSearchStyle(){
  return ElevatedButton.styleFrom(
      fixedSize: Size(360, 50),
      backgroundColor: Color(0xff004579)
  );
}

ButtonStyle buttonDayUseStyle(){
  return ElevatedButton.styleFrom(
      fixedSize: Size(360, 50),
      backgroundColor: Color(0xff004579)
  );
}

ButtonStyle buttonSearchAirportStyle(){
  return ElevatedButton.styleFrom(
      fixedSize: Size(360, 50),
      side: BorderSide(
          width: 1.0,
          color: Color(0xff004579)
      ),
      backgroundColor: Color(0xffFFFFFF)
  );
}

ButtonStyle buttonSignUpGoogle(){
  return ElevatedButton.styleFrom(
      fixedSize: Size(360, 50),
      side: BorderSide(
          width: 1.0,
          color: Color(0xffF14336)
      ),
      backgroundColor: Color(0xffFFFFFF)
  );
}

ButtonStyle buttonSignUpApple(){
  return ElevatedButton.styleFrom(
      fixedSize: Size(360, 50),
      side: BorderSide(
          width: 1.0,
          color: Colors.black
      ),
      backgroundColor: Color(0xffFFFFFF)
  );
}


ButtonStyle buttonSignUp(){
  return ElevatedButton.styleFrom(
      backgroundColor: Color(0xff004579)
  );
}

ButtonStyle buttonSignIn(){
  return ElevatedButton.styleFrom(
      side: BorderSide(
          width: 1.0,
          color: Color(0xff004579)
      ),
      backgroundColor: Color(0xffFFFFFF)
  );
}

ButtonStyle buttonContinue(){
  return ElevatedButton.styleFrom(
      fixedSize: Size(350, 50),
      backgroundColor: Color(0xff004579)
  );
}