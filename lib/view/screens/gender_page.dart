import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/Buttons/gender_button.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({Key? key}) : super(key: key);

  @override
  _GenderPageState createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  String? seciliCinsiyet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(122, 49, 46, 46),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: Center(
                  child: Text(
                    "Bize kendinden bahset",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                )),
                Expanded(
                    child: Center(
                  child: Text(
                    "En iyi sonucu alabilmek için cinsiyetini seç.",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                )),
                Expanded(
                  flex: 4,
                  child: Column(children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              seciliCinsiyet = "ERKEK";
                            });
                          },
                          child: Container(
                              padding: EdgeInsets.all(50),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: seciliCinsiyet == "ERKEK"
                                    ? Color(0xFFA8D36F)
                                    : Color.fromARGB(166, 46, 46, 46),
                              ),
                              child: gender_button(
                                  icolor: seciliCinsiyet == "ERKEK"
                                      ? Colors.black
                                      : Colors.white,
                                  tcolor: seciliCinsiyet == "ERKEK"
                                      ? Colors.black
                                      : Colors.white,
                                  cinsiyet: "ERKEK",
                                  icon: FontAwesomeIcons.mars)),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              seciliCinsiyet = "KADIN";
                            });
                          },
                          child: Container(
                              padding: EdgeInsets.all(50),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: seciliCinsiyet == "KADIN"
                                    ? Color(0xFFA8D36F)
                                    : Color.fromARGB(166, 46, 46, 46),
                              ),
                              child: gender_button(
                                  icolor: seciliCinsiyet == "KADIN"
                                      ? Colors.black
                                      : Colors.white,
                                  tcolor: seciliCinsiyet == "KADIN"
                                      ? Colors.black
                                      : Colors.white,
                                  cinsiyet: "KADIN",
                                  icon: FontAwesomeIcons.venus)),
                        ),
                      ],
                    ),
                  ]),
                ),
              ]),
        )));
  }
}
