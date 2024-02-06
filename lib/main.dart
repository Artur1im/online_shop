import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop/bloc/shop_bloc.dart';
import 'package:online_shop/page/bottom_navigation_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //   providers: [
        //     BlocProvider(
        //       create: (context) => ShopBloc(),
        //       child:
        MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      theme: ThemeData.light(), // Используем тему светлого режима по умолчанию
      darkTheme: ThemeData.dark(), //
      home: const BottomNb(),
    );
    // )
    // ],
    // child: Text('Что то'),
    // );
  }
}
