import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_shop/widget/button.dart';
import 'package:online_shop/widget/text.dart';
import 'package:online_shop/widget/text_input.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 1.2 * kToolbarHeight, 20, 20),
        // padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
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
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 50),
                                const BigText(
                                  title: 'Registration',
                                ),
                                const InputText(title: "Name"),
                                const InputText(title: "login"),
                                const InputTextPassword(title: "password"),
                                const InputText(title: "Namber phone"),
                                NButton(
                                  title: 'Entrance',
                                  onTap: (finish) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Registration()),
                                    );
                                  },
                                ),
                                NButton(
                                  title: 'beck',
                                  onTap: (finish) {
                                    Navigator.pop(context);
                                  },
                                ),
                              ])),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
