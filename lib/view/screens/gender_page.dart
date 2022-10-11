import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({Key? key}) : super(key: key);

  @override
  _GenderPageState createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(122, 49, 46, 46),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: Center(
              child: Text(
                "Bize kendinden bahset",
                style: Theme.of(context).textTheme.headline1,
              ),
            )),
            Expanded(
                child: Center(
              child: Text(
                "Bize kendinden bahset",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            )),
            Expanded(
                child: Column(
              children: [],
            )),
          ]),
        ),
      ),
    );
  }
}
