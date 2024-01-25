import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_shop/page/bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.purple,
        extendBodyBehindAppBar: true,
        body: BottomNb());
  }
}
