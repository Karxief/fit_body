import 'package:fit_body/view/widgets/EmailTextField_widgets.dart';
import 'package:fit_body/view/widgets/PasswordTextfield_witget.dart';
import 'package:fit_body/view/widgets/backround_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                        style: const TextStyle(fontSize: 35),
                        gradient: LinearGradient(colors: [
                          Colors.green.shade50,
                          Colors.green.shade400
                        ]),
                      ),
                    )),
                const Expanded(
                    flex: 1,
                    child: EmailTextField(
                        // loginpagemailcontroller: null,
                        )),
                const SizedBox(height: 10),
                const Expanded(flex: 1, child: PasswordTextField()),
                const Text('Forgot Password',
                    style: TextStyle(
                      fontFamily: 'Dosis',
                      color: Color.fromARGB(255, 173, 223, 145),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),

                // SizedBox(height: 5,),
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).primaryColor),
                            child: const Icon(
                              Icons.apple,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          )),
    ]);
  }
}
