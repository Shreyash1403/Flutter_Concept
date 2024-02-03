import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  int counter1 = 0;
  int counter2 = 0;
  bool box1color = false;
  bool box2color = false;

  Color setColor() {
    if (counter1 == 0) {
      return Colors.black;
    } else if (counter1 == 1) {
      return Colors.red;
    } else if (counter1 == 2) {
      return Colors.green;
    } else if (counter1 == 3) {
      return Colors.blue;
    } else {
      counter1 = 0;
      return Colors.black;
    }
  }

  Color setColor2() {
    if (counter2 == 0) {
      return Colors.black;
    } else if (counter2 == 1) {
      return Colors.red;
    } else if (counter2 == 2) {
      return Colors.green;
    } else if (counter2 == 3) {
      return Colors.blue;
    } else {
      counter2 = 0;
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Color"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: setColor(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter1++;
                  });
                },
                child: const Text("Button 1"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: setColor2(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter2++;
                  });
                },
                child: const Text("Button 2"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
