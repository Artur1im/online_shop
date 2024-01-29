import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/page/cart.dart';
import 'package:online_shop/page/loading.dart';
import 'package:online_shop/page/home.dart';
import 'package:online_shop/page/person.dart';

class BottomNb extends StatefulWidget {
  const BottomNb({Key? key}) : super(key: key);

  @override
  State<BottomNb> createState() => _BottomNbState();
}

class _BottomNbState extends State<BottomNb> {
  final _pageController = PageController(initialPage: 0);

  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> bottomBarPages = [
    const Person(),
    const Cart(),
    const Home(),
    const Page4(),
    const AnimatedVibratingBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: AnimatedNotchBottomBar(
                  notchBottomBarController: _controller,
                  color: Colors.white,
                  showLabel: false,
                  notchColor: Colors.black87,
                  removeMargins: false,
                  bottomBarWidth: 500,
                  durationInMilliSeconds: 300,
                  bottomBarItems: const [
                    BottomBarItem(
                      inActiveItem: Icon(
                        Icons.person,
                        color: Colors.blueGrey,
                      ),
                      activeItem: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      itemLabel: 'Page 1',
                    ),
                    BottomBarItem(
                      inActiveItem: Icon(
                        Icons.star_border,
                        color: Colors.blueGrey,
                      ),
                      activeItem: Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                      ),
                      itemLabel: 'Page 2',
                    ),
                    BottomBarItem(
                      inActiveItem: Icon(
                        Icons.home,
                        color: Colors.blueGrey,
                      ),
                      activeItem: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      itemLabel: 'Page 3',
                    ),
                    BottomBarItem(
                      inActiveItem: Icon(
                        Icons.shopping_bag_rounded,
                        color: Colors.blueGrey,
                      ),
                      activeItem: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                      itemLabel: 'Page 5',
                    ),
                    BottomBarItem(
                      inActiveItem: Icon(
                        Icons.settings,
                        color: Colors.blueGrey,
                      ),
                      activeItem: Icon(
                        Icons.settings,
                        color: Colors.blueAccent,
                      ),
                      itemLabel: 'Page 4',
                    ),
                  ],
                  onTap: (index) {
                    log('current selected index $index');
                    _pageController.jumpToPage(index);
                  },
                ),
              ),
            )
          : null,
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue, child: const Center(child: Text('Page 4')));
  }
}
