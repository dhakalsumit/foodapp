import 'package:flutter/material.dart';
import 'package:foodapp/home/home_one.dart';
import 'package:foodapp/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BORE',
      theme: myTheme(),
      home: HomePage(),
    );
  }
}
