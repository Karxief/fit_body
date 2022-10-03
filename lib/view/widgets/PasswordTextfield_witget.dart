// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  //final TextEditingController loginpagepasswordcontroller;
  //const EmailTextField({Key? key, required this.loginpagepasswordcontroller})
  //: super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8)),
        child: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: TextField(
              style: TextStyle(color: Colors.white),
              obscureText: true,
              //controller: loginpagepasswordcontroller,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  hintText: 'Password')),
        ));
  }
}
