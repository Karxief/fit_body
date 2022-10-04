// ignore_for_file: prefer_const_constructors
import 'package:fit_body/view/widgets/backround_image_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/formfield_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Backroundimage(backround_image: AssetImage('assets/FitMen.jpg')),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Sign_in_FormField(),
        ),
      ),
    ]);
  }
}
