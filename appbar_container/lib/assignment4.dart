import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment3(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Core2web"),
        // backgroundColor: Colors.purple,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
