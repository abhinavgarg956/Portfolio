import 'package:flutter/material.dart';

class CCards extends StatelessWidget {
  final List data2;
  final int index;
  CCards(this.data2, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      child: Card(
        elevation: 2,
        color: Colors.amber[400],
        child: Column(
          children: [
            ListTile(
              title: Text(data2[index]['title']),
              subtitle: Text(data2[index]['sub']),
              leading: Image.asset(data2[index]['img']),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 21),
              child: Text(
                data2[index]['det'],
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
