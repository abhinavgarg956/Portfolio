import 'package:flutter/material.dart';

import 'Educards.dart';

class Expo2 extends StatefulWidget {
  final String s;
  Expo2(this.s);
  @override
  _Expo2State createState() => _Expo2State();
}

class _Expo2State extends State<Expo2> {
  final List data2 = [
    {
      'title': 'B-Tech ',
      'sub': 'JECRC University  \n2017 - 2021',
      'img': 'images/do7.png',
      // 'det': '',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 450,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.s,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              textAlign: TextAlign.right,
            ),
            for (int i = 0; i < data2.length; i++) EduCards(data2, i),
          ],
        ),
      ),
    );
  }
}
