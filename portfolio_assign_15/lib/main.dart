import 'package:flutter/material.dart';
import 'package:portfolio_assign_15/MyPortfolio.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPortfolio(),
    );
  }
}
