// ignore_for_file: prefer_const_constructors

import 'package:fit_body/view/screens/login_page.dart';
import 'package:fit_body/view/screens/sign_in_page.dart';
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
    const double height = 10;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Align(
            heightFactor: 5,
            alignment: const AlignmentDirectional(-0.5, 0.45),
            child: GradientText(
              'Bilgilerini gir,\naramıza katıl! ',
              style: const TextStyle(fontSize: 33),
              gradient: LinearGradient(colors: [
                Colors.green.shade50,
                Color.fromARGB(255, 143, 187, 102)
              ]),
            ),
          ),
          Column(
            children: [
              MyTextField(
                textField_icon: Icons.account_circle_sharp,
                hint_text: 'Full Name',
                // loginpagemailcontroller: null,
              ),
              SizedBox(height: height),
              MyTextField(
                textField_icon: Icons.email, hint_text: 'Email',
                // loginpagemailcontroller: null,
              ),
              SizedBox(height: height),
              MyTextField(
                textField_icon: Icons.lock, hint_text: 'Password',
                // loginpagemailcontroller: null,
              ),
              SizedBox(height: height),
              MyTextField(
                textField_icon: Icons.lock,
                hint_text: 'Password Confirm',
                // loginpagemailcontroller: null,
              ),
              SizedBox(height: height),
              accesess_buttons(button_text: 'Sign Up'),
              SizedBox(height: height + 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I am already a member!",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    },
                    child: Text(
                      '   Log in',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
