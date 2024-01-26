import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final title;
  final double size;
  final color;
  const BigText({super.key, this.title, required this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: color ?? Colors.white, fontSize: size, fontFamily: 'Big'),
    );
  }
}
