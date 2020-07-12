import 'package:flutter/material.dart';
import 'package:poll/screens/mainPage.dart';
import 'package:poll/screens/vote.dart';

class StartinPage extends StatefulWidget {
  @override
  _StartinPageState createState() => _StartinPageState();
}



class _StartinPageState extends State<StartinPage> {
  method() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Button working"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 100.0,
            left: 32.0),
            child: Row(
              children: [
                Center(
                  child: Text('Welcome to poll platform',
                    style: TextStyle(
                      fontFamily: "Pts",
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, SlideRightRoute(page: FancyBackgroundApp()));

                    });
                  },
                  child: Container(
                    height: 50.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      elevation: 10,
                      child: Center(
                        child: Text('Guest vote',
                        style: TextStyle(
                          fontFamily: "PTs",
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        ),
                      ),
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, SlideRightRoute(page: Home()));

                    });
                  },
                  child: Container(
                    height: 50.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      elevation: 10,
                      child: Center(
                        child: Text('Create account',
                          style: TextStyle(
                              fontFamily: "PTs",
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          )
        ],
      ),
    );
  }
}
