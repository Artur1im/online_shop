import 'package:flutter/material.dart';
import 'package:online_shop/widget/colors.dart';
import 'package:online_shop/widget/counter.dart';
import 'package:online_shop/widget/text.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const BigText(
          title: 'Cart',
          size: 35,
        ),
        actions: [
          Container(
              padding: const EdgeInsets.only(right: 10),
              child:
                  const Text('Choose', style: TextStyle(color: Colors.white)))
        ],
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(children: [
              Card(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(
                          'https://images.satu.kz/204663480_w640_h640_krossovki-nike-sb.jpg',
                          width: 100,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            width: 110,
                            height: 50,
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: Text(
                                'Nike - Running shoes are the lightest of all.',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Counter(),
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BigText(
                          size: 30,
                          title: "120 \$",
                          color: Colors.black,
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: const Center(
                              child: BigText(
                                size: 16,
                                title: 'buy',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ]),
          )),
    );
  }
}
