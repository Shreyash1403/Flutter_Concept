import 'package:flutter/material.dart';

class Flag extends StatefulWidget {
  @override
  const Flag({super.key});

  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  int counter = -1;

  void flagCounter() {
    counter = counter + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flagCounter();
            // counter++;
          });
        },
        child: const Text("Add"),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (counter >= 0)
                ? Container(
                    height: 500,
                    width: 20,
                    color: Colors.black,
                  )
                : Container(),
            Column(
              children: [
                (counter >= 1)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.orange,
                      )
                    : Container(),
                (counter >= 2)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.white,
                        child: (counter >= 3)
                            ? Image.network(
                                "https://media.istockphoto.com/id/1182479181/vector/ashoka-chakra.jpg?s=2048x2048&w=is&k=20&c=3-R9Q3qFhqO42MGxm_Kc4QbCzoTwIhRcECwIYE_j-Rc=",
                              )
                            : Container(),
                      )
                    : Container(),
                (counter >= 4)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.green,
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
