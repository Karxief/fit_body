// ignore_for_file: prefer_const_constructors

import 'package:fit_body/view/widgets/Buttons/accesess_buttons_widget.dart';
import 'package:flutter/material.dart';

import 'textField_widgets.dart';
import 'welcome_text.dart';

class Sign_in_FormField extends StatelessWidget {
  const Sign_in_FormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Align(
            alignment: const AlignmentDirectional(-0.5, 0.35),
            child: GradientText(
              'Bilgilerini gir,\naramıza katıl! ',
              style: const TextStyle(fontSize: 33),
              gradient: LinearGradient(colors: [
                Colors.green.shade50,
                Color.fromARGB(255, 143, 187, 102)
              ]),
            ),
          ),
        ),
        Expanded(
            child: Column(
          children: [
            Expanded(
                flex: 1,
                child: MyTextField(
                  textField_icon: Icons.account_circle_sharp,
                  hint_text: 'Full Name',
                  // loginpagemailcontroller: null,
                )),
            Expanded(
                flex: 1,
                child: MyTextField(
                  textField_icon: Icons.email, hint_text: 'Email',
                  // loginpagemailcontroller: null,
                )),
            Expanded(
                flex: 1,
                child: MyTextField(
                  textField_icon: Icons.lock, hint_text: 'Password',
                  // loginpagemailcontroller: null,
                )),
            Expanded(
                flex: 1,
                child: MyTextField(
                  textField_icon: Icons.lock,
                  hint_text: 'Password Confirm',
                  // loginpagemailcontroller: null,
                )),
            Expanded(flex: 2, child: accesess_buttons(button_text: 'Sign Up')),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Have you already an account?",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        '   Log in',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    )
                  ],
                )),
          ],
        )),
      ],
    );
  }
}
