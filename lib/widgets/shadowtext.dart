import 'package:flutter/material.dart';

class ShadowText extends StatelessWidget {
  final String ans;
  ShadowText(this.ans);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            this.ans,
            style:
                TextStyle(fontFamily: 'DancingScript', fontSize: 45, shadows: [
              Shadow(
                  // bottomLeft
                  offset: Offset(-1.5, -1.5),
                  color: Colors.white),
              Shadow(
                  // bottomRight
                  offset: Offset(1.5, -1.5),
                  color: Colors.black),
              Shadow(
                  // topRight
                  offset: Offset(1.5, 1.5),
                  color: Colors.white),
              Shadow(
                  // topLeft
                  offset: Offset(-1.5, 1.5),
                  color: Colors.white),
            ]),
          ),
        ),
      ],
    );
  }
}
