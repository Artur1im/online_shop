import 'package:flutter/material.dart';
import 'package:online_shop/widget/card.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),

        // toolbarHeight: 10,
        // backgroundColor: Colors.black,
        leading: const Icon(
          Icons.person,
          color: Colors.white,
        ),
        title: const Text(
          'Name',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: const Icon(
              Icons.chat_bubble_outline_sharp,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 5),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Card(
                color: Color.fromRGBO(235, 235, 235, 1),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Item 1'),
                      subtitle: Text('Subtitle 1'),
                      trailing: Icon(
                        Icons.navigate_next_outlined,
                        size: 30,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Item 2'),
                      subtitle: Text('Subtitle 2'),
                      trailing: Icon(
                        Icons.navigate_next_outlined,
                        size: 30,
                      ),
                    ),
                  ],
                )),
            CastCard(
              title: 'Name',
              subtitle: 'last name',
              trailing: Icon(
                Icons.navigate_next_outlined,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
