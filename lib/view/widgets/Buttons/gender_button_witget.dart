import 'package:flutter/material.dart';

class GenderButtonWitget extends StatelessWidget {
  final Widget icon_name;
  const GenderButtonWitget({Key? key, required this.icon_name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Theme.of(context).primaryColor),
      child: IconButton(
        onPressed: () {},
        icon: icon_name,
        color: Colors.white,
      ),
    );
  }
}
