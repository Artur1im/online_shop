import 'package:flutter/material.dart';
import 'package:nice_buttons/nice_buttons.dart';

// ignore: must_be_immutable
class NButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final title;
  final onTap;
  const NButton({super.key, this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NiceButtons(
        startColor: Colors.greenAccent,
        endColor: const Color.fromARGB(255, 176, 150, 181),
        borderColor: Colors.purple.shade500,
        stretch: false,
        gradientOrientation: GradientOrientation.Vertical,
        onTap: onTap,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
