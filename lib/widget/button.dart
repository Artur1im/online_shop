import 'package:flutter/material.dart';
import 'package:nice_buttons/nice_buttons.dart';

// ignore: must_be_immutable
class NButton extends StatelessWidget {
  String title;
  dynamic onTap;
  NButton({super.key, required this.title, required this.onTap});

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
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ButtonforOrder extends StatelessWidget {
  String title;
  dynamic onPress;
  ButtonforOrder({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Colors.blueAccent,
                Colors.redAccent,
                Colors.purpleAccent
              ]),
              borderRadius: BorderRadius.circular(5),
              boxShadow: const <BoxShadow>[
                BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.57), blurRadius: 5)
              ]),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: onPress,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                  bottom: 18,
                ),
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
              ))),
    );
  }
}
