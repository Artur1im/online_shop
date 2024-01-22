import 'dart:ui';

import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final widgets;
  const Screen({super.key, this.widgets});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 1.2 * kToolbarHeight, 20, 20),
        // padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Align(
              alignment: const AlignmentDirectional(3, -0.3),
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.pink),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-3, -0.3),
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepPurple),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -1.2),
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(color: Colors.green),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
              child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent)),
            ),
            widget,
          ]),
        ));
  }
}
