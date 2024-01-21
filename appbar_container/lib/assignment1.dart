import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Core2web"),
        centerTitle: true,
        actions: [
          const Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          ),
          const Icon(
            Icons.accessibility_new,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
