import 'package:flutter/material.dart';
import 'package:sum_app/main.dart';
import 'package:sum_app/home_screen.dart';

class Sum_App extends StatelessWidget {
  const Sum_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      title: 'Home',
    );
  }
}
