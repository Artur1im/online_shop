import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: _decrementCounter,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const Icon(Icons.remove, color: Colors.white),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '$_counter',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: _incrementCounter,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
