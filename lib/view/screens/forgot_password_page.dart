// ignore_for_file: prefer_const_constructors
import 'package:fit_body/view/screens/sign_in_page.dart';
import 'package:fit_body/view/widgets/textField_widgets.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(122, 49, 46, 46),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text('Forgot Your\nPassword?',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                    'Enter your email address associeted with your account and we\'ll send you a link to reset your password.',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyText1),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: MyTextField(
                      textField_icon: Icons.email, hint_text: 'Email')),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).cardColor),
                  child: Center(
                    child: Text(
                      'Continiue',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Don't you have an account?",
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
                        '   Sign in',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
