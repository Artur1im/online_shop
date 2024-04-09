import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GroceryItemTitle extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePatch;
  final color;
  void Function()? onPressed;

  GroceryItemTitle(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePatch,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePatch,
              height: 64,
            ),
            Text(itemName),
            MaterialButton(
              onPressed: onPressed,
              color: color,
              child: Text(
                itemPrice,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
