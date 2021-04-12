import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:url_launcher/url_launcher.dart';

_launch() async {
  const url = 'https://www.linkedin.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Code extends StatefulWidget {
  @override
  _CodeState createState() => _CodeState();
}

class _CodeState extends State<Code> with TickerProviderStateMixin {
  List data = [
    {
      'name': 'Blog 1',
      'sub': 'about cloud',
      'desc': 'Details about cloud emerging in big cities',
      'asst': 'images/a1.jpg',
    },
    {
      'name': 'Blog 2 ',
      'sub': 'about cloud',
      'desc': 'Details about cloud emerging in big cities',
      'asst': 'images/a1.jpg',
    },
    {
      'name': 'Blog 2 ',
      'sub': 'about cloud',
      'desc': 'Details about cloud emerging in big cities',
      'asst': 'images/a1.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    CardController controller;
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: new TinderSwapCard(
            orientation: AmassOrientation.RIGHT,
            totalNum: data.length,
            //stackNum: 2,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardBuilder: (context, index) {
              print(index);
              return SizedBox(
                //  width: 350,
                height: 250,
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  margin: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 5,
                  ),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    //  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('${data[index]['asst']}'),
                      Padding(padding: EdgeInsets.only(top: 4, left: 4)),
                      ListTile(
                        // make this work onLongPress: _launch,
                        onTap: _launch,
                        leading: FlutterLogo(),
                        title: Text(
                          '${data[index]['name']}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('${data[index]['sub']}'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0, left: 4),
                        child: Column(
                          children: [
                            Text(
                              '${data[index]['desc']}',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5.5, left: 15),
                                  child: ElevatedButton(
                                      onPressed: _launch, child: Text('Visit')),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            cardController: controller = CardController(),
          ),
        ),
        //IconButton(icon: Icon(Icons.refresh), onPressed: ref)
      ],
    );
  }
}
