import 'package:flutter/material.dart';
import 'package:online_shop/widget/button.dart';
import 'package:online_shop/widget/card.dart';
import 'package:online_shop/widget/text.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => PaymentState();
}

class PaymentState extends State<Payment> {
// final ShopBloc shopBloc = ShopBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //  BlocBuilder<ShopBloc, ShopState>(
          //   bloc: shopBloc,
          //   builder: (context, state) {
          //     return
          Container(
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
            widget: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Заказ №7348',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
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
          const BigText(
            size: 30,
            title: '1.200 \$',
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
        //   );
        // },
      ),
    );
  }
}
