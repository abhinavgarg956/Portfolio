import 'package:flutter/material.dart';

class EduCards extends StatelessWidget {
  final List data2;
  final int index;
  EduCards(this.data2, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      child: Card(
        color: Colors.amber[400],
        elevation: 2,
        child: Column(
          children: [
            ListTile(
              title: Text(data2[index]['title']),
              subtitle: Text(data2[index]['sub']),
              leading: Image.asset(data2[index]['img']),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
            ),
          ],
        ),
      ),
    );
  }
}
