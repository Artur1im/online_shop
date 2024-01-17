import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final title;
  const BigText({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          const TextStyle(color: Colors.white, fontSize: 50, fontFamily: 'Big'),
    );
  }
}
