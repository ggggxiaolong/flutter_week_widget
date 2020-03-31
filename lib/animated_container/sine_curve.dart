import 'package:flutter/material.dart';
import 'dart:math';

class SineCurveAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SineCurveAnimationState();
}

class _SineCurveAnimationState extends State<SineCurveAnimation> {
  bool _isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Sine Curve"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _isBig ? 300 : 100,
          duration: const Duration(seconds: 1),
          child: Image.asset("images/dolphin.png"),
          curve: SineCurve(2),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.sync),
          onPressed: () {
            setState(() {
              _isBig = !_isBig;
            });
          }),
    );
  }
}

class SineCurve extends Curve {
  final double count;

  SineCurve(this.count);

  @override
  double transformInternal(double t) {
    return sin(count * pi * t) * 0.5 + 0.5;
  }
}
