import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Переключение темы'),
        ),
        body: Center(
          child: Text(
            'Привет, это приложение с переключением темы!',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              isDarkMode = !isDarkMode;
            });
          },
          child: const Icon(Icons.lightbulb_outline),
        ),
      ),
    );
  }
}
