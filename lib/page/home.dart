import 'package:flutter/material.dart';
import 'package:online_shop/page/bottom_navigation_bar.dart';
import 'package:online_shop/page/cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home'),
        ),
        body: Container(
          child: BottomNb(),
        ));
  }
}
