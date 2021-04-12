import 'package:flutter/material.dart';

class Dop extends StatefulWidget {
  @override
  _DopState createState() => _DopState();
}

class _DopState extends State<Dop> {
  List<Widget> lop = [
    Card(
      child: Text('hi1'),
      color: Colors.white,
    ),
    Card(child: Text('hi1'), color: Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        for (int i = 0; i < 2; i++) lop[i],
      ],
    ));
  }
}
