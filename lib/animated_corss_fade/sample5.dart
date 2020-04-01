import 'package:flutter/material.dart';
import 'package:flutter_week_widget/animated_corss_fade/other.dart';

class SamplePage5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage5> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample5"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            LightBlue(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: 200),
                crossFadeState: _showFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: Hello(),
                secondChild: Goodbye.small(),
                firstCurve: Curves.easeOut,
                secondCurve: Curves.easeIn,
                sizeCurve: Curves.bounceOut,
              ),
              onTap: () => setState(() {
                _showFirst = !_showFirst;
              }),
            ),
            SizedBox(
              height: 20,
            ),
            LightBlue(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
