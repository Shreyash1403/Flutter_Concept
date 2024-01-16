import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment1(),
    );
  }
}

class Assignment1 extends StatefulWidget {
  const Assignment1({Key? key}) : super(key: key);

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int count = 0;
  int Scount = 0;
  List<int> num = [153, 202, 303, 434, 404, 455, 597];

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

  void armstrong() {
    setState(() {
      Scount = 0;
      for (int i = 0; i < num.length; i++) {
        int temp1 = num[i];
        int sum = 0;
        int tempCount = 0;

        while (temp1 != 0) {
          temp1 = temp1 ~/ 10;
          tempCount++;
        }

        int temp2 = num[i];
        while (temp2 != 0) {
          int rem = temp2 % 10;
          int mul = 1;

          for (int i = 0; i < tempCount; i++) {
            mul = mul * rem;
          }
          sum = sum + mul;
          temp2 = temp2 ~/ 10;
        }

        if (sum == num[i]) {
          print(num[i]);
          Scount++;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome and Armstrong Checker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                "Click button to print palindrome and Armstrong numbers"),
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
            const SizedBox(
              height: 20,
            ),
            Text(
              "Count: $Scount",
            ),
            ElevatedButton(
              onPressed: armstrong,
              child: const Text("Print Armstrong Numbers"),
            ),
          ],
        ),
      ),
    );
  }
}
