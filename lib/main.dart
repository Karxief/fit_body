// ignore_for_file: prefer_const_constructors
import 'dart:developer';

import 'package:fit_body/theme/theme.dart';
import 'package:fit_body/view/screens/age_page.dart';
import 'package:fit_body/view/screens/forgot_password_page.dart';
import 'package:fit_body/view/screens/gender_page.dart';
import 'package:fit_body/view/screens/login_page.dart';
import 'package:fit_body/view/screens/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appThemeData,
      home: AgePage(),
    );
  }
}

// Forgot password page
// Butonların navigasyon işlemleri yapılacak.
