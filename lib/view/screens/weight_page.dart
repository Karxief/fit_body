import 'package:flutter/material.dart';
import 'package:wheel_slider/wheel_slider.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({Key? key}) : super(key: key);

  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  int _nCurrentValue = 50;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(122, 49, 46, 46),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Text('Kaç kilosunuz? ',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text('Kilonuzu istediğiniz zaman değiştirebilirsiniz.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90, bottom: 30),
                  child: WheelSlider(
                    lineColor: const Color(0xFFA8D36F),
                    pointerColor: const Color(0xFFA8D36F),
                    isVibrate: false,
                    perspective: 0.004,
                    totalCount: 150,
                    initValue: 50,
                    onValueChanged: (val) {
                      setState(() {
                        _nCurrentValue = val;
                      });
                    },
                  ),
                ),
                Text(_nCurrentValue.toString(),
                    style: Theme.of(context).textTheme.headline1),
              ],
            ),
          )),
    );
  }
}
