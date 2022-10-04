// ignore_for_file: file_names, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  EmailTextField({super.key});

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
                    Icons.email,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: Theme.of(context).textTheme.bodyText1)),
        ));
  }
}
