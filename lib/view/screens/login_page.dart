// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fit_body/view/widgets/EmailTextField_widgets.dart';
import 'package:fit_body/view/widgets/PasswordTextfield_witget.dart';
import 'package:fit_body/view/widgets/backround_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/Buttons/buttons_witgets.dart';
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
      const Backroundimage(),
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
                    child: EmailTextField(
                        // loginpagemailcontroller: null,
                        )),
                SizedBox(height: 10),
                Expanded(flex: 1, child: PasswordTextField()),
                SizedBox(height: 10),

                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text('Forgot Password',
                      style: Theme.of(context).textTheme.bodyText2),
                ]),
                // SizedBox(height: 5,),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: button_widget(
                              icon_name: FaIcon(FontAwesomeIcons.google))),
                      Expanded(
                          flex: 3,
                          child: button_widget(
                            icon_name: FaIcon(FontAwesomeIcons.apple),
                          )),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 6,
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Theme.of(context).cardColor),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Login",
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                                Icon(Icons.arrow_right)
                              ],
                            ),
                          ))
                    ],
                  ),
                ),

                Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Don't you have an account?",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            '   Sign in',
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
