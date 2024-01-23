import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables

  final title;
  const InputText({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 1, color: Colors.white),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
            hintStyle: const TextStyle(color: Colors.white),
            hintText: title),
      ),
    );
  }
}

class InputTextPassword extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables

  final title;
  const InputTextPassword({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    bool _isHidden = true;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        obscureText: _isHidden,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 1, color: Colors.white),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
            hintStyle: const TextStyle(color: Colors.white),
            hintText: title),
      ),
    );
  }
}
