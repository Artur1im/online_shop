import 'package:flutter/material.dart';
import 'package:online_shop/widget/colors.dart';

// ignore: must_be_immutable
class InputText extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  dynamic color;
  final title;
  InputText({super.key, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        style: TextStyle(color: color),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 1, color: color),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: color, width: 2.0),
            ),
            hintStyle: TextStyle(color: color),
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
    bool isHidden = true;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        obscureText: isHidden,
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

class SerchInput extends StatelessWidget {
  const SerchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(30)),
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.white,
        ),
        suffixIcon: const Icon(
          Icons.filter_alt_outlined,
          color: AppColors.white,
        ),
        hintText: 'Поиск...',
        hintStyle: const TextStyle(color: AppColors.white),
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            )),
      ),
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return const TextField();
  }
}
