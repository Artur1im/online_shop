import 'package:flutter/material.dart';
import 'package:nice_buttons/nice_buttons.dart';

// ignore: must_be_immutable
class NButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final title;
  // ignore: prefer_typing_uninitialized_variables
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
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

class ButtonforOrder extends StatelessWidget {
  const ButtonforOrder({super.key});

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
                //add more colors
              ]),
              borderRadius: BorderRadius.circular(5),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                    blurRadius: 5) //blur radius of shadow
              ]),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 18,
                  bottom: 18,
                ),
                child: Text(
                  "Оформить заказ",
                  style: TextStyle(color: Colors.white),
                ),
              ))),
    );
  }
}
