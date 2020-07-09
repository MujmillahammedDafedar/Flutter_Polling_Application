import 'package:flutter/material.dart';

class MyPoll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade400,
      ),
      body: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext ctxt, int index) {
          return new Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 140,
            width: double.maxFinite,

            child: Card(
              color: Colors.brown,
              elevation: 10,
              child: Column(
                children: [
                  Text(
                    "Is this degree exams held in karnataka?",
                    style: TextStyle(
                        fontFamily: "Pts2",
                        color: Colors.brown.shade900,
                        fontSize: 21.0),
                  ),
                  Row(
                    children: [
                      Text(
                        "Total vote: 40",
                        style: TextStyle(
                          color: Colors.brown.shade900,
                          fontSize: 12.0,
                          fontFamily: "Pts2",
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
