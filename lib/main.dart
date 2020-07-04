import 'package:flutter/material.dart';
import 'package:poll/screens/MyApp.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.brown.shade900,
       body: SafeArea(
         child: StartinPage(),
       ),
     ),
   );
  }
}


