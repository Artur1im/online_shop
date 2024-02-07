import 'package:flutter/material.dart';
import 'package:online_shop/widget/image_picker.dart';
import 'package:online_shop/widget/text_input.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin page'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(children: [
            const ImageP(),
            const SizedBox(height: 20),
            InputText(
              title: 'name',
              color: Colors.black,
            ),
            InputText(
              title: 'Description',
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: 'price'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text('load product'))
          ]),
        ),
      ),
    );
  }
}
