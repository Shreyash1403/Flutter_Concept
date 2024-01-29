import 'package:flutter/material.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  _MyPortfolioState createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  int counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Portfolio"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: const Text("Next"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (counter >= 0)
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Name: Shreyash Kale",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                if (counter >= 1)
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Image.asset(
                      "images/MyPhoto.jpg",
                      height: 150,
                      width: 250,
                    ),
                  ),
                (counter >= 2)
                    ? Container(
                        padding: EdgeInsets.only(top: 30.0, bottom: 20),
                        child: Text(
                          "College: Marathwada Mitra Mandal College of Engineering",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    : Container(),
                (counter >= 3)
                    ? Container(
                        padding: EdgeInsets.only(left: 50),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUEYYr9ssEUdJR1EDZ8vm6gH3mabkLfTqv-fCXoBxSmw&s",
                          height: 150,
                          width: 250,
                        ),
                      )
                    : Container(),
                (counter >= 4)
                    ? Container(
                        padding: EdgeInsets.only(top: 30.0, bottom: 20),
                        child: Text(
                          "Dream Company: Veritas",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    : Container(),
                (counter >= 5)
                    ? Container(
                        padding: EdgeInsets.only(left: 50),
                        child: Image.network(
                          "https://download.logo.wine/logo/Veritas_Technologies/Veritas_Technologies-Logo.wine.png",
                          height: 150,
                          width: 250,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ));
  }
}
