// ignore_for_file: file_names

import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  // final TextEditingController loginpagemailcontroller;
  //const EmailTextField({Key? key, required this.loginpagemailcontroller})
  //  : super(key: key);

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
              //controller: loginpagemailcontroller, !! const kaldırmalısın.
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  hintText: 'Email')),
        ));
  }
}
