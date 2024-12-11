import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';

class AppTextStyles {
  static const TextStyle headline1 =
      TextStyle(fontSize: 42,
       color: kWhiteColor, height: 1);

  static const TextStyle headline2 = TextStyle(
      fontSize: 9, 
      fontWeight: FontWeight.w500, 
      color: kWhiteColor,
       height: 1);

  static const TextStyle headline3 = TextStyle(
    color: kWhiteColor,
    fontSize: 35,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle headline4 = TextStyle(
    color: kAccentColor,
    fontSize: 26,
  );

  static const TextStyle headline5 =
      TextStyle(
        color: kButtonColor, 
        fontSize: 45,
        height: 1);

  static const TextStyle headline6 = TextStyle(
    color: kButtonColor,
    fontSize: 8,
    fontWeight: FontWeight.bold,
  );

 static const TextStyle headline7 = TextStyle(
    color: kButtonColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );


  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
}
