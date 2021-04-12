import 'package:flutter/material.dart';

import 'linkedincards.dart';

class Expo extends StatefulWidget {
  final String s;
  Expo(this.s);
  @override
  _ExpoState createState() => _ExpoState();
}

class _ExpoState extends State<Expo> {
  final List data2 = [
    {
      'title': 'Product Developer',
      'sub': 'Daffodil Software  \n2019 - Present',
      'img': 'images/do3.jfif',
      'det':
          'Developed andriod apps for more than 2 year using technolgies like xyz and done yyz for this company',
    },
    {
      'title': 'Andriod Developer',
      'sub': 'Unthinkable Soln.  \n2019 - Present',
      'img': 'images/do6.png',
      'det':
          'Developed andriod apps for more than 2 year using technolgies like xyz and done yyz for this company',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 450,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 3,
                    top: 8,
                  ),
                  child: Text(
                    widget.s,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            for (int i = 0; i < data2.length; i++) LCards(data2, i),
          ],
        ),
      ),
    );
  }
}
