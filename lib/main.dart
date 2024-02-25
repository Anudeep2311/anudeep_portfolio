import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/theme.dart';
import 'package:flutter_portfolio/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      title: 'Anudeep Lohogaonkar',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
