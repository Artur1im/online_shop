import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertDialogFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Platform.isIOS
                  ? CupertinoAlertDialog(
                      title: const Text('Заголовок '),
                      content: const Text('Текст '),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text('Кнопка 1'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text('Кнопка 2'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    )
                  : AlertDialog(
                      title: Text('Заголовок '),
                      content: Text('Текст '),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Кнопка 1'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text('Кнопка 2'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
            },
          );
        },
        child: Text('Alert'),
      ),
    );
  }
}
