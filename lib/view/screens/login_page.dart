// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fit_body/view/screens/forgot_password_page.dart';
import 'package:fit_body/view/screens/onboarding_screen.dart';
import 'package:fit_body/view/screens/sign_in_page.dart';
import 'package:fit_body/view/widgets/backround_image_widget.dart';
import 'package:fit_body/view/widgets/textField_widgets.dart';
import 'package:flutter/material.dart';
import '../widgets/Buttons/accesess_buttons_widget.dart';
import '../widgets/welcome_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Backroundimage(backround_image: AssetImage('assets/Fitwomen.jpg')),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    flex: 8,
                    child: Align(
                      alignment: const AlignmentDirectional(-0.5, 0.35),

                      //Kullanıcı ismi hatırlanacak ve text olarak yazdırılacak.
                      child: GradientText(
                        'Tekrar Hoşgeldin, \nSeyit! ',
                        style: const TextStyle(fontSize: 33),
                        gradient: LinearGradient(colors: [
                          Colors.green.shade50,
                          Color.fromARGB(255, 143, 187, 102)
                        ]),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: MyTextField(
                      textField_icon: Icons.email, hint_text: 'Email',
                      // loginpagemailcontroller: null,
                    )),
                SizedBox(height: 10),
                Expanded(
                    flex: 1,
                    child: MyTextField(
                      textField_icon: Icons.lock,
                      hint_text: 'Password',
                    )),
                SizedBox(height: 10),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ForgotPasswordPage();
                    }));
                  },
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text('Forgot Password',
                        style: Theme.of(context).textTheme.bodyText2),
                  ]),
                ),
                // SizedBox(height: 5,),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return OnBoardingScreen();
                          },
                        ));
                      },
                      child: accesess_buttons(button_text: 'Login')),
                ),

                Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Not a member?",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignInPage();
                            }));
                          },
                          child: Text(
                            '  Sign in',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        )
                      ],
                    )),
              ],
            ),
          )),
    ]);
  }
}
