import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  final PageController _controller = PageController(viewportFraction: 0.8);
  final textt = <Widget>[
    Center(
      child: SizedBox(
        height: 70 + (30),
        child: Card(
            elevation: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // margin: const EdgeInsets.all(6),
                  child: Image.asset(
                    'assets/img/qr-code.png',
                    width: 70,
                  ),
                ),
                const Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'QR - Delivery code',
                      style: TextStyle(fontFamily: 'Big', fontSize: 17),
                    ),
                    Text('Какой то текст2'),
                  ],
                ),
              ],
            )),
      ),
    ),
    Center(
      child: SizedBox(
        height: 70 + (30),
        child: Card(
          elevation: 4,
          child: Center(child: Text('Card ')),
        ),
      ),
    ),
    Center(
      child: SizedBox(
        height: 70 + (30),
        child: Card(
          elevation: 4,
          child: Center(child: Text('Card ')),
        ),
      ),
    ),
    Center(
      child: SizedBox(
        height: 70 + (30),
        child: Card(
          elevation: 4,
          child: Center(child: Text('Card ')),
        ),
      ),
    ),
    Center(
      child: SizedBox(
        height: 70 + (30),
        child: Card(
          elevation: 4,
          child: Center(child: Text('Card ')),
        ),
      ),
    ),
  ];

  Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100, // Card height
        child: PageView.builder(
          itemCount: 5,
          controller: _controller,
          itemBuilder: (context, index) {
            return ListenableBuilder(
              listenable: _controller,
              builder: (context, child) {
                double factor = 1;
                if (_controller.position.hasContentDimensions) {
                  factor = 1 - (_controller.page! - index).abs();
                }

                return Center(
                    child: SizedBox(
                        height: 80 + (factor * 30), child: textt[index]));
              },
            );
          },
        ));
  }
}
