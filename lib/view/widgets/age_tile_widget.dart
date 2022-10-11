import 'package:flutter/material.dart';

class AgeTileWidget extends StatelessWidget {
  int age;
  AgeTileWidget({required this.age});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        child: Center(
          child: Text(
            age.toString(),
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
