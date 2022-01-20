import 'package:flutter/material.dart';
import 'package:pdpui2/second_page.dart';

import 'choosed_page.dart';
import 'favorite_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FavoritePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        SecondPage.id: (context) => const SecondPage(),
        FavoritePage.id: (context) => FavoritePage(),
        ChoosedPage.id: (context) => const ChoosedPage(),
      },
    );
  }
}
