import 'package:flutter/material.dart';

// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_this
class gender_button extends StatelessWidget {
  final String cinsiyet;
  final IconData icon;
  final Color icolor;
  final Color tcolor;
  gender_button(
      {this.cinsiyet = '',
      required this.icon,
      required this.icolor,
      required this.tcolor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          color: icolor,
          size: 50,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.cinsiyet,
          style: TextStyle(
              fontFamily: 'Poppins',
              color: tcolor,
              fontSize: 15,
              fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
