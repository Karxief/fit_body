import 'package:fit_body/view/screens/login_page.dart';
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
      theme: ThemeData(
          iconTheme: IconThemeData(size: 40),
          primaryColor: Color.fromARGB(104, 241, 236, 236),
          inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(color: Colors.white)),
          primaryTextTheme: const TextTheme(
              bodyText1: TextStyle(color: Color.fromARGB(255, 219, 213, 213))),
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Color.fromARGB(255, 173, 223, 145)),
          )),
      home: const LoginPage(),
    );
  }
}
