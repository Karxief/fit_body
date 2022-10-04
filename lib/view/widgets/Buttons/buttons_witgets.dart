// TODO Implement this library.
import 'package:flutter/material.dart';

class button_widget extends StatelessWidget {
  final Widget icon_name;
  const button_widget({
    Key? key,
    required this.icon_name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
