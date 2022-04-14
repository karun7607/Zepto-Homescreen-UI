import 'package:flutter/material.dart';
import 'package:zepto/config/app_colors.dart';
import 'package:zepto/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Palette1.kToDark),
      title: 'Flutter Demo',
      home: const HomeScreen(),
    );
  }
}
