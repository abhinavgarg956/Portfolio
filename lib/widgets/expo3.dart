import 'package:flutter/material.dart';

import 'CertCards.dart';

class Expo3 extends StatefulWidget {
  final String s;
  Expo3(this.s);
  @override
  _Expo3State createState() => _Expo3State();
}

class _Expo3State extends State<Expo3> {
  final List data2 = [
    {
      'title': 'Red Hat Certified Engineer (RHCE)',
      'sub': 'Red Hat\n2019-2021',
      'img': 'images/do8.png',
      'det': 'Credentials id:-996-554-233',
    },
    {
      'title': 'Google Cloud Fundamentals',
      'sub': 'Google\n2019-2021',
      'img': 'images/do9.png',
      'det': 'Credentials:-Coursera',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
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
            for (int i = 0; i < data2.length; i++) CCards(data2, i),
          ],
        ),
      ),
    );
  }
}
