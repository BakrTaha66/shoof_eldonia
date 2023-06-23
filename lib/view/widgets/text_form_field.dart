import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';

import '../../config/palette.dart';

Widget buildTextFormFieldAirport(
    String icon, String hintText) {
  return SizedBox(
    width: 150,
    child: TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: Palette.iconColor,
                width: 1,
            )
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 20,
            child: SvgPicture.asset(icon),
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Palette.iconColor,
            width: 1
          )
        ),
        contentPadding: EdgeInsets.all(15),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
      ),
    ),
  );
}
Widget buildTextFormFieldAirportWidth(
    String icon, String hintText) {
  return SizedBox(
    width: double.infinity,
    child: TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Palette.iconColor,
              width: 1,
            )
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 20,
            child: SvgPicture.asset(icon,color: Colors.black.withOpacity(0.5),),
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: Palette.iconColor,
                width: 1
            )
        ),
        contentPadding: EdgeInsets.all(15),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
      ),
    ),
  );
}