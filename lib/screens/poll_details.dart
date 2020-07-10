import 'package:flutter/cupertino.dart';
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
            preferredSize: Size.fromHeight(200.0),
            child: new Container(
              color: Colors.brown,
              child: new SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                  child: Column(
                    children: <Widget>[
                      new Expanded(
                        child: new Container(
                          child: Text(
                            "Is karnataka government promote to degree students?",
                            style: TextStyle(
                                color: Colors.brown.shade200,
                                fontSize: 18.0,
                                fontFamily: "Pts2",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.brown.shade900),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            8.0) //                 <--- border radius here
                                        )),
                                child: Text('Option 01fhjfhskdfhksjdhf',
                                    style: TextStyle(
                                        color: Colors.brown.shade200,
                                        fontSize: 13.0,
                                        fontFamily: "Pts2",
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.brown.shade900),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            8.0) //                 <--- border radius here
                                        )),
                                child: Text('Option 01fhjfhskdfhksjdhf',
                                    style: TextStyle(
                                        color: Colors.brown.shade200,
                                        fontSize: 13.0,
                                        fontFamily: "Pts2",
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.brown.shade900),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            8.0) //                 <--- border radius here
                                        )),
                                child: Text('Option 01fhjfhskdfhksjdhf',
                                    style: TextStyle(
                                        color: Colors.brown.shade200,
                                        fontSize: 13.0,
                                        fontFamily: "Pts2",
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.brown.shade900),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            8.0) //                 <--- border radius here
                                        )),
                                child: Text('Option 01fhjfhskdfhksjdhf',
                                    style: TextStyle(
                                        color: Colors.brown.shade200,
                                        fontSize: 13.0,
                                        fontFamily: "Pts2",
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.brown.shade900),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            8.0) //                 <--- border radius here
                                        )),
                                child: Text('Option 01fhjfhskdfhksjdhf',
                                    style: TextStyle(
                                        color: Colors.brown.shade200,
                                        fontSize: 13.0,
                                        fontFamily: "Pts2",
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
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
          ),
          body: new TabBarView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new ListView(
                  children: <Widget>[
                    Container(
                      height: 80.0,
                      width: double.maxFinite,
                      child: Card(
                        color: Colors.brown,
                        elevation: 10.0,
                        child: Text(
                          "Muzammil voted for : No",
                           textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: double.maxFinite,
                      child: Card(
                        color: Colors.brown,
                        elevation: 10.0,
                        child: Text(
                          "Muzammil voted for : No",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: double.maxFinite,
                      child: Card(
                        color: Colors.brown,
                        elevation: 10.0,
                        child: Text(
                          "Muzammil voted for : No",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: double.maxFinite,
                      child: Card(
                        color: Colors.brown,
                        elevation: 10.0,
                        child: Text(
                          "Muzammil voted for : No",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new ListView(
                  children: <Widget>[
                    Container(
                      height: 80.0,
                      width: double.maxFinite,
                      child: Card(
                        color: Colors.brown,
                        elevation: 10.0,
                        child: Text(
                          "Muzammil voted for : No",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: double.maxFinite,
                      child: Card(
                        color: Colors.brown,
                        elevation: 10.0,
                        child: Text(
                          "Muzammil voted for : No",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: double.maxFinite,
                      child: Card(
                        color: Colors.brown,
                        elevation: 10.0,
                        child: Text(
                          "Muzammil voted for : No",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 80.0,
                      width: double.maxFinite,
                      child: Card(
                        color: Colors.brown,
                        elevation: 10.0,
                        child: Text(
                          "Muzammil voted for : No",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.brown.shade200,
                              fontSize: 20.0,
                              fontFamily: "Pts2",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
