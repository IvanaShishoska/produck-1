import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    fontFamily: 'Avenir',
    textTheme: textTheme(),
  );
}

TextTheme textTheme(){
  return const TextTheme(
    headline1: TextStyle(
      color: Colors.white,
      fontSize: 32,
      fontWeight: FontWeight.bold
    ),
      headline2: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
      ),
      headline3: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
      ),
      headline4: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
      ),
      headline5: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold
      ),
      headline6: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold
      ),

      bodyText1: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.bold
      ),
      bodyText2: TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.bold
      )
  );
}