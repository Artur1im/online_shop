import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/page/store_page.dart';
import 'package:online_shop/widget/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
            child: Image.asset('assets/img/avocado.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              "We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                  fontSize: 38, fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            "Fresh items everyday",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          ButtonforOrder(
            title: 'Get Started',
            onPress: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const StorePage();
            })),
          )
        ],
      ),
    );
  }
}
