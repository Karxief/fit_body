// ignore_for_file: file_names, prefer_const_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {super.key, required this.textField_icon, required this.hint_text});
  final IconData textField_icon;
  final String hint_text;

  // final TextEditingController loginpagemailcontroller;
  //const EmailTextField({Key? key, required this.loginpagemailcontroller})
  //  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: TextField(
              style: Theme.of(context).textTheme.bodyText1,
              //controller: loginpagemailcontroller, !! const kaldırmalısın.
              decoration: InputDecoration(
                  icon: Icon(
                    textField_icon,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  hintText: hint_text,
                  hintStyle: Theme.of(context).textTheme.bodyText1)),
        ));
  }
}
