// ignore_for_file: prefer_const_constructors

import 'package:fit_body/view/widgets/Buttons/buttons_witgets.dart';
import 'package:fit_body/view/widgets/backround_image_widget.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final formkey = GlobalKey<FormState>();
  double height = 20;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Backroundimage(
            backround_image: AssetImage('assets/infoPage.jpg')),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.all(height),
              child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 430),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Boyunuzu girin',
                          hintStyle: Theme.of(context).textTheme.bodyText1,
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[1-60]').hasMatch(value)) {
                          } else {}
                          return null;
                        },
                      ),
                      SizedBox(height: height),
                      TextFormField(
                        decoration: InputDecoration(
                          hoverColor: Theme.of(context).cardColor,
                          hintText: 'Boyun çevrenizi girin',
                          hintStyle: Theme.of(context).textTheme.bodyText1,
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[1-60]').hasMatch(value)) {
                          } else {}
                          return null;
                        },
                      ),
                      SizedBox(height: height),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Bel çevrenizi girin',
                          hintStyle: Theme.of(context).textTheme.bodyText1,
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[1-60]').hasMatch(value)) {
                          } else {}
                          return null;
                        },
                      ),
                      SizedBox(height: height - 10),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Theme.of(context).cardColor),
                        child: Text(
                          'Hesapla',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      SizedBox(height: height),
                    ],
                  )),
            ),
          ),
        )
      ],
    );
  }
}
