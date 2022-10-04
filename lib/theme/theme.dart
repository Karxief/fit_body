import 'package:flutter/material.dart';

final appThemeData = ThemeData(
    iconTheme: const IconThemeData(size: 50),
    cardColor: const Color.fromARGB(255, 140, 214, 143),
    primaryColor: const Color.fromARGB(157, 134, 121, 121),
    textTheme: const TextTheme(
        headline1: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold),
        bodyText1: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.normal),
        bodyText2: TextStyle(
            fontFamily: 'Dosis',
            color: Color(0xFFA8D36F),
            fontSize: 15,
            fontWeight: FontWeight.bold)));
