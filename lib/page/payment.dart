// ignore_for_file: must_be_immutable
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:online_shop/widget/button.dart';
import 'package:online_shop/widget/card.dart';
import 'package:online_shop/widget/text.dart';

class Payment extends StatefulWidget {
  String totalPrise;
  Payment({super.key, required this.totalPrise});

  @override
  State<Payment> createState() => PaymentState();
}

class PaymentState extends State<Payment> {
  int numBer = 0;
  @override
  void initState() {
    super.initState();
    generateRandomNumber();
  }

  void generateRandomNumber() {
    var rng = Random();
    setState(() {
      numBer = rng.nextInt(10000000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 15),
            child: BigText(
              size: 25,
              title: 'Оплата заказа',
            ),
          ),
          UniversalCard(
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Заказ номер:  $numBer",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      'Количество ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Expanded(child: Divider()),
                    Text(
                      ' 15 шт ',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          BigText(
            size: 30,
            title: widget.totalPrise,
          ),
          SizedBox(
              width: double.infinity,
              child: ButtonforOrder(title: 'Сheckout', onPress: () {})),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(bottom: 5, left: 5),
            child: BigText(
              size: 20,
              title: 'Select a Payment Method',
            ),
          ),
          UniversalCard(
              widget: const Padding(
            padding: EdgeInsets.all(6.0),
            child: Row(
              children: [
                Icon(
                  Icons.credit_card,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                BigText(
                  title: 'Credit Card',
                  size: 18,
                )
              ],
            ),
          )),
          UniversalCard(
              widget: const Padding(
            padding: EdgeInsets.all(6.0),
            child: Row(
              children: [
                Icon(
                  Icons.wallet,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                BigText(
                  title: 'Сash payment',
                  size: 18,
                )
              ],
            ),
          )),
        ]),
      ),
    );
  }
}
