import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final title;
  final double size;

  const BigText({super.key, this.title, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: size, fontFamily: 'Big'),
    );
  }
}
