import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'msc',
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          backgroundColor: Colors.brown.shade900,
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(150.0),
            child: new Container(
              color: Colors.brown.shade400,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        child: Text(
                          "Is karnataka government promote to degree students?",
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    new TabBar(
                      tabs: [
                        new Text(
                          "Verified Vote",
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        ),
                        new Text(
                          "Guest Vote",
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              new Column(
                children: <Widget>[new Text("Lunches Page")],
              ),
              new Column(
                children: <Widget>[new Text("Cart Page")],
              )
            ],
          ),
        ),
      ),
    );
  }
}
