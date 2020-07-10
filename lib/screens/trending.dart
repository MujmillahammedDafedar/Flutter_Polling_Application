import 'package:flutter/material.dart';
class Trending extends StatelessWidget {
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
class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return ListTile(
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
            ),
            height: 120.0,
            width: double.maxFinite,
            child: Card(
              child: Text('Hello'),
            ),
          ),
        );
      },
    );
  }
}


