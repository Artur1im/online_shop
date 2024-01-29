// import 'package:flutter/material.dart';
// import 'package:vibration/vibration.dart';

// class AnimatedVibratingBox extends StatefulWidget {
//   const AnimatedVibratingBox({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _AnimatedVibratingBoxState createState() => _AnimatedVibratingBoxState();
// }

// class _AnimatedVibratingBoxState extends State<AnimatedVibratingBox>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     );

//     _animation = Tween<double>(begin: 100, end: 200).animate(_controller);

//     _controller.repeat(reverse: true);

//     _controller.addListener(() {
//       if (_controller.status == AnimationStatus.forward) {
//         Vibration.vibrate(duration: 50);
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: AnimatedBuilder(
//         animation: _animation,
//         builder: (context, child) {
//           return GestureDetector(
//             onTap: () {
//               _controller.forward(from: 0);
//               Vibration.vibrate(duration: 200);
//             },
//             child: Container(
//               width: _animation.value,
//               height: _animation.value,
//               color: Colors.purple,
//               child: const Center(
//                 child: Text(
//                   'Vibration',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vibration/vibration.dart';

class MyLoadingScreen extends StatefulWidget {
  @override
  _MyLoadingScreenState createState() => _MyLoadingScreenState();
}

class _MyLoadingScreenState extends State<MyLoadingScreen> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    simulateLoading();
    vibrate();
  }

  void simulateLoading() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  void vibrate() async {
    if (await Vibration.hasVibrator() ?? false) {
      Vibration.vibrate(duration: 500);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Screen'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisSpacing: 5,
          mainAxisSpacing: 3,
          crossAxisCount: 3,
          children: const [
            SpinKitChasingDots(
              color: Colors.indigo,
            ),
            SpinKitCircle(
              color: Colors.amber,
            ),
            SpinKitDancingSquare(
              color: Colors.blueAccent,
            ),
            SpinKitDoubleBounce(
              color: Colors.pink,
            ),
            SpinKitFadingGrid(
              color: Colors.orange,
            ),
            SpinKitWanderingCubes(
              color: Colors.teal,
            ),
            SpinKitHourGlass(color: Colors.lightGreenAccent),
            SpinKitDualRing(
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}
