// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'buttons_witgets.dart';

class accesess_buttons extends StatelessWidget {
  final String button_text;
  const accesess_buttons({
    Key? key,
    required this.button_text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: button_widget(icon_name: FaIcon(FontAwesomeIcons.google))),
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
                    button_text,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Icon(Icons.arrow_right)
                ],
              ),
            ))
      ],
    );
  }
}
