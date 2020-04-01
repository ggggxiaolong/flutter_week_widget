import 'package:flutter/material.dart';

class LightBlue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          "Hello",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}

class Goodbye extends StatelessWidget {
  final double height;
  final double width;

  Goodbye(this.width, this.height);
  Goodbye.normal():this.width=300, this.height=300;
  Goodbye.small():this.width=250, this.height=100;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Text(
          "Goodbye",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}
