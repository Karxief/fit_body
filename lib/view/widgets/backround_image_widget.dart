import 'package:flutter/material.dart';

class Backroundimage extends StatelessWidget {
  const Backroundimage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Fitwomen.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken)),
      ),
    );
  }
}
