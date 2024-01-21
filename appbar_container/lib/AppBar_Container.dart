import 'package:appbar_container/assignment1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
