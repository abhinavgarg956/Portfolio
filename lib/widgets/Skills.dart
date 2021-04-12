import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'C++       ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 25,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  // heightFactor: 0.1,
                  height: 25,
                  width: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'Python  ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  // heightFactor: 0.1,
                  height: 25,
                  width: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'NodeJS ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  // heightFactor: 0.1,
                  height: 25,
                  width: 140,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'Java       ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  // heightFactor: 0.1,
                  height: 25,
                  width: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'React    ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 25,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  // heightFactor: 0.1,
                  height: 25,
                  width: 140,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
