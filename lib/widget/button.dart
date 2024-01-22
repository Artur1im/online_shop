import 'package:flutter/material.dart';
import 'package:nice_buttons/nice_buttons.dart';

class NButton extends StatelessWidget {
  final title;
  final press;
  NButton({super.key, this.title, this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NiceButtons(
        startColor: Colors.greenAccent,
        endColor: Colors.purpleAccent,
        borderColor: Colors.purple.shade500,
        stretch: false,
        gradientOrientation: GradientOrientation.Vertical,
        onTap: (finish) {
          press;
        },
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
