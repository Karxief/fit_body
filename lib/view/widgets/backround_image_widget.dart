// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Backroundimage extends StatelessWidget {
  const Backroundimage({
    Key? key,
    required this.backround_image,
  }) : super(key: key);
  final ImageProvider backround_image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: backround_image,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)),
      ),
    );
  }
}
