import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:poll/screens/create_poll.dart';
import 'package:poll/screens/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.brown.shade900, body: Grid()),
    );
  }
}

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  method() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Button working"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: new Container(
                height: 200.0,
                decoration: new BoxDecoration(
                  color: Colors.brown,
                  boxShadow: [new BoxShadow(blurRadius: 40.0)],
                  borderRadius: new BorderRadius.vertical(
                      bottom: new Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0)),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TyperAnimatedTextKit(
                            onTap: () {
                              print("Tap Event");
                            },
                            text: [
                              "It is not enough to do your best,",
                              "you must know what to do,",
                              "and then do your best",
                              "- W.Edwards Deming",
                            ],
                            textStyle:
                                TextStyle(fontSize: 30.0, fontFamily: "PTs2"),
                            textAlign: TextAlign.start,
                            alignment: AlignmentDirectional
                                .topStart // or Alignment.topLeft
                            ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton.icon(
                          elevation: 15.0,
                          icon: Icon(Icons.add),
                          label: Text(
                            'Vote',
                            style: TextStyle(fontFamily: "Pts2", fontSize: 16),
                          ),
                          color: Colors.brown.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.brown.shade900)
                          ),
                          onPressed: () {
                            setState(() {
                              method();
                            });
                          },
                          textTheme: ButtonTextTheme.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView.count(
            primary: false,
            crossAxisSpacing: 10,
            padding: EdgeInsets.all(40.0),
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                decoration:
                    new BoxDecoration(color: Colors.brown.shade400, boxShadow: [
                  new BoxShadow(
                    color: Colors.brown.shade900,
                    blurRadius: 20.0,
                  ),
                ]),
                height: 120.0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, SlideRightRoute(page: Profile()));

                    });
                  },
                  child: Card(
                    color: Colors.brown.shade200,
                    child: Column(
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 70,
                          color: Colors.brown.shade900,
                        ),
                        Text(
                          'My Profile',
                          style: TextStyle(fontFamily: "Pts2", fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Colors.brown.shade400, boxShadow: [
                  new BoxShadow(
                    color: Colors.brown.shade900,
                    blurRadius: 20.0,
                  ),
                ]),
                height: 120.0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, SlideRightRoute(page: CreatePoll()));
                    });
                  },
                  child: Card(
                    color: Colors.brown.shade200,
                    child: Column(
                      children: [
                        Icon(
                          Icons.add,
                          size: 70,
                          color: Colors.brown.shade900,
                        ),
                        Text(
                          'Create Poll',
                          style: TextStyle(fontFamily: "Pts2", fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Colors.brown.shade400, boxShadow: [
                  new BoxShadow(
                    color: Colors.brown.shade900,
                    blurRadius: 20.0,
                  ),
                ]),
                height: 120.0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      method();
                    });
                  },
                  child: Card(
                    color: Colors.brown.shade200,
                    child: Column(
                      children: [
                        Icon(
                          Icons.poll,
                          size: 70,
                          color: Colors.brown.shade900,
                        ),
                        Text(
                          'My Polls',
                          style: TextStyle(fontFamily: "Pts2", fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Colors.brown.shade400, boxShadow: [
                  new BoxShadow(
                    color: Colors.brown.shade900,
                    blurRadius: 20.0,
                  ),
                ]),
                height: 120.0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      method();
                    });
                  },
                  child: Card(
                    color: Colors.brown.shade200,
                    child: Column(
                      children: [
                        Icon(
                          Icons.trending_up,
                          size: 70,
                          color: Colors.brown.shade900,
                        ),
                        Text(
                          'Trending Polls',
                          style: TextStyle(fontFamily: "Pts2", fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}
