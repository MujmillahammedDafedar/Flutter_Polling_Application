import 'package:flutter/material.dart';
import 'package:poll/model/particle.dart';
import 'package:simple_animations/simple_animations.dart';
import 'dart:math';
import 'package:supercharged/supercharged.dart';

class FancyBackgroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: AnimatedBackground()),
        onBottom(AnimatedWave(
          height: 200,
          speed: 2.0,
        )),
        onBottom(AnimatedWave(
          height: 150,
          speed: 0.9,
          offset: pi,
        )),
        onBottom(AnimatedWave(
          height: 100,
          speed: 1.2,
          offset: pi / 2,
        )),
        MainCard(),
      ],
    );
  }

  Widget onBottom(Widget child) => Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      );
}

class AnimatedWave extends StatelessWidget {
  final double height;
  final double speed;
  final double offset;

  AnimatedWave({this.height, this.speed, this.offset = 0.0});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: height,
        width: constraints.biggest.width,
        child: LoopAnimation<double>(
            duration: (5000 / speed).round().milliseconds,
            tween: 0.0.tweenTo(2 * pi),
            builder: (context, child, value) {
              return CustomPaint(
                foregroundPainter: CurvePainter(value + offset),
              );
            }),
      );
    });
  }
}

class CurvePainter extends CustomPainter {
  final double value;

  CurvePainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()..color = Colors.white.withAlpha(60);
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(
        size.width * 0.5, controlPointY, size.width, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

enum _BgProps { color1, color2 }

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<_BgProps>()
      ..add(_BgProps.color1, Color(0xffD38312).tweenTo(Colors.brown.shade900))
      ..add(_BgProps.color2, Color(0xffA83279).tweenTo(Colors.brown.shade600));

    return MirrorAnimation<MultiTweenValues<_BgProps>>(
      tween: tween,
      duration: 3.seconds,
      builder: (context, child, value) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                value.get(_BgProps.color1),
                value.get(_BgProps.color2)
              ])),
        );
      },
    );
  }
}

class MainCard extends StatefulWidget {


  @override
  _MainCardState createState() => _MainCardState();
}



class _MainCardState extends State<MainCard> {
  // ignore: must_call_super
  initState(){
    super.initState();

  }
  choice(){
      return InkWell(
        child: Container(
          height: 80,
          child: Card(
            child: Text("hello"),
          ),
        ),
      );
      

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          width: double.maxFinite,
          height: 350.0,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.brown.shade900, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.brown.shade600,
            elevation: 10.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Is Governement of karnataka promoted to degree students?",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.brown.shade200,
                        fontFamily: "PTs2",
                        fontWeight: FontWeight.bold),
                  ),
                ),
               
                Column(
                  children: [
                    choice(),
                    choice(),
                    choice(),
                    choice()

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
