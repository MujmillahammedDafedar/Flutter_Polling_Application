import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class CreatePoll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown.shade900,
        appBar: AppBar(
          backgroundColor: Colors.brown.shade400,
        ),
        body: Main()
    );
  }
}
class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  var textFields = <TextField>[];
  void initState() {
    super.initState();
    for (var i = 0; i < 2; i++) {
      addField();
    }
  }
  addField() {
    textFields.add(
      TextField(
        autofocus: false,
        maxLines: null,
        keyboardType: TextInputType.text,
        minLines: null,
        style: TextStyle(
          color: Colors.brown.shade200,
          fontFamily: "PTs2",
          fontSize: 14.0,
        ),
        decoration: new InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          labelText: "Option",
          labelStyle: TextStyle(color: Colors.brown.shade200),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.brown.shade900, width: 4.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.brown.shade900, width: 4.0),
          ),
          hintText: 'Enter your poll option',
        ),
      ),
    );

  }
  deletField() {
    textFields.removeLast();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 10.0,
              color: Colors.brown,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
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
                          TextStyle(fontSize: 25.0, fontFamily: "PTs2",color: Colors.brown.shade200),
                          textAlign: TextAlign.start,
                          alignment: AlignmentDirectional
                              .topStart // or Alignment.topLeft
                      ),
                    ),
                    Text(
                      'Poll Question',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pts2",
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade200),
                    ),
                    TextField(
                      autofocus: false,
                      maxLines: null,
                      keyboardType: TextInputType.text,
                      minLines: null,
                      style: TextStyle(
                        color: Colors.brown.shade200,
                        fontFamily: "PTs2",
                        fontSize: 16.0,
                      ),
                      decoration: new InputDecoration(
                        labelText: "Question",
                        labelStyle: TextStyle(color: Colors.brown.shade200),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.brown.shade900, width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.brown.shade900, width: 5.0),
                        ),
                        hintText: 'Enter your poll questions',
                      ),
                    ),
                    Divider(
                      color: Colors.brown.shade900,
                      height: 20.0,
                      indent: 40.0,
                      endIndent: 40.0,
                    ),
                    Text(
                      'Poll Options',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pts2",
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade200),
                    ),
                    Column(
                      children: textFields,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RaisedButton(
                            elevation: 10.0,
                            color: Colors.brown.shade400,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.brown.shade900)
                            ),
                            child: Text(
                              "Add",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "PTs2",
                                  color: Colors.brown.shade900
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                addField();
                                Scaffold.of(context).showSnackBar(SnackBar(
                                  content: Text('New option is added'),
                                  duration: Duration(seconds: 3),
                                  backgroundColor: Colors.green,
                                ));
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RaisedButton(
                            elevation: 10.0,
                            color: Colors.brown.shade400,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.brown.shade900)
                            ),
                            child: Text(
                              'Crate',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "PTs2",
                                  color: Colors.brown.shade900

                              ),
                            ),
                            onPressed: () {
                              setState(() {});
                            },
                          ),
                        ),
                        Expanded(
                          child: RaisedButton(
                            elevation: 10.0,
                            color: Colors.brown.shade400,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.brown.shade900)
                            ),
                            child: Text(
                              "Remove",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "PTs2",
                                  color: Colors.brown.shade900
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                deletField();
                                Scaffold.of(context).showSnackBar(SnackBar(
                                  content: Text('Last option deleted'),
                                  duration: Duration(seconds: 3),
                                  backgroundColor: Colors.red,
                                ));
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

