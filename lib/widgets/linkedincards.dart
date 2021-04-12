import 'package:flutter/material.dart';

class LCards extends StatelessWidget {
  final List data2;
  final int index;
  LCards(this.data2, this.index);

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
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data2[index]['det'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
