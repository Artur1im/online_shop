import 'package:flutter/material.dart';

class CastCard extends StatelessWidget {
  final title;
  final subtitle;
  final trailing;

  const CastCard({super.key, this.title, this.subtitle, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color.fromRGBO(235, 235, 235, 1),
        child: Column(
          children: [
            ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
                trailing: trailing),
          ],
        ));
  }
}
