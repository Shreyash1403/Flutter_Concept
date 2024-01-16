import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment2(),
    );
  }
}

class Assignment2 extends StatefulWidget {
  Assignment2({Key? key}) : super(key: key);

  @override
  _Assignment2State createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  int count = 0;
  List<int> num = [113, 202, 303, 434, 404, 455, 597];

  void palindrome() {
    setState(() {
      count = 0; // Reset count before checking palindrome numbers
      for (int i = 0; i < num.length; i++) {
        int temp = num[i];
        int rev = 0;

        while (temp != 0) {
          int rem = temp % 10;
          rev = rev * 10 + rem;
          temp = temp ~/ 10;
        }

        if (rev == num[i]) {
          print(num[i]);
          count++;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome Checker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Click button to print palindrome values"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Count: $count",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: palindrome,
              child: const Text("Print Palindromes"),
            ),
          ],
        ),
      ),
    );
  }
}
