import 'package:flutter/material.dart';
import 'package:poll/screens/poll_details.dart';
import 'mainPage.dart';


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
            height: 160,
            width: double.maxFinite,
            child: Card(
              color: Colors.brown,
              elevation: 10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Is this degree exams held in karnataka?",
                      style: TextStyle(
                          fontFamily: "Pts2",
                          color: Colors.brown.shade200,
                          fontSize: 21.0),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Total vote: 40",
                            style: TextStyle(
                                color: Colors.brown.shade200,
                                fontSize: 12.0,
                                fontFamily: "Pts2",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FlatButton(
                            color: Colors.brown.shade900,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.brown.shade900)
                            ),
                            child: Text(
                              "Detail",
                              style: TextStyle(
                                  color: Colors.brown.shade200,
                                  fontSize: 12.0,
                                  fontFamily: "Pts2",
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: (){
                              Navigator.push(context, SlideRightRoute(page: Details()));
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
