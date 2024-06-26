import 'package:flutter/material.dart';
import 'package:online_shop/widget/card.dart';
import 'package:online_shop/widget/colors.dart';
import 'package:online_shop/widget/scroll.dart';
import 'package:online_shop/widget/text_input.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final ShopBloc shopBloc = ShopBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 55),
          child: AppBar(
            backgroundColor: AppColors.primaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
            ),
            title: const Text(
              'Name shop',
              style: TextStyle(color: Colors.white),
            ),
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(40),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SerchInput(),
                )),
          ),
        ),
        body:
            //  BlocBuilder<SubjectBloc, SubjectState>(
            //   builder: (context, state) {
            //     bloc: shopBloc
            //     return
            SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Scroll(),
                const CardForCart(),
                const CardForCart(),
                const CardForCart(),
                const CardForCart(),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        )
        // },
        // )
        );
  }
}
