
import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1>{

List<int> num = [121,283,400,232];
int count=0;
void palindrome() {
  
    setState(() {
      int count = 0; // Reset count before checking palindrome numbers
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
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers Checker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Click button for Palindrome number"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Count: $count",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: palindrome,
             child: const Text("Print Palindromes"),
             ),
        ],
        ),
      ),
    );
  }
}