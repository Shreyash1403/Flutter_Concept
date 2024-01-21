import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment(),
    );
  }
}

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  int? _count = 0;

  void _printTableValue() {
    setState(() {
      _count = _count! + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Print Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Click button to print values"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _printTableValue, child: const Text("Print")),
          ],
        ),
      ),
    );
  }
}
