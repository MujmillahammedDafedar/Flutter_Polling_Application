import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown.shade900,
        appBar: AppBar(
          leading: BackButton(
            color: Colors.brown.shade900,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.brown.shade400,
        ),
        body: MyProfile(),
      ),
    );
  }
}

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  method(){
    print("Test");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 10.0,
                color: Colors.brown,
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: new BoxDecoration(
                                color: Colors.brown.shade900,
                                borderRadius: new BorderRadius.all(
                                    new Radius.circular(50.0)),
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'http://i.imgur.com/QSev0hg.jpg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Muzammil dafedar",
                                  style: TextStyle(
                                    color: Colors.brown.shade200,
                                    fontFamily: "PTs2",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0
                                  ),

                                )),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ButtonTheme(
                                minWidth: 160.0,
                                height: 46.0,
                                buttonColor: Colors.brown.shade900,
                                child: RaisedButton(

                                  elevation: 10.0,
                                  onPressed: (){
                                    method();
                                  },
                                  child: Text(
                                    'Log Out',
                                    style: TextStyle(
                                        color: Colors.brown.shade200,
                                        fontSize: 12.0,
                                        fontFamily: "PTs2"),
                                  ),
                                ),
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
          ),
        ],
      ),
    );
  }
}
