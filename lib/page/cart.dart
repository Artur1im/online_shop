import 'package:flutter/material.dart';
import 'package:online_shop/page/payment.dart';
import 'package:online_shop/widget/button.dart';
import 'package:online_shop/widget/card.dart';
import 'package:online_shop/widget/colors.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
// final ShopBloc shopBloc = ShopBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: const Text(
            'Cart',
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          actions: [
            Container(
                padding: const EdgeInsets.only(right: 10),
                child:
                    const Text('Choose', style: TextStyle(color: Colors.white)))
          ],
        ),
        body:

            //  BlocBuilder<ShopBloc, ShopState>(
            //   builder: (context, state) {
            //     return
            Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CardForCart(),
                const CardForCart(),
                const CardForCart(),
                const CardForCart(),
                const CardForCart(),
                ButtonforOrder(
                    title: 'Оформить заказ',
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Payment()),
                      );
                    }),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          //   );
          // },
        ));
  }
}
