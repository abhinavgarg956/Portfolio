import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Blogs extends StatefulWidget {
  // final Function launch;
  //Blogs(this.launch);
  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //tRY TO INCLUDE STACK THEN GESTURE
          Container(
            //height: 280,
            width: 350,
            child: Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 5,
                ),
                child: Column(
                  children: [
                    Image.asset('images/a5.jfif'),
                    Padding(padding: EdgeInsets.only(top: 4, left: 4)),
                    ListTile(
                      // make this work onLongPress: _launch,
                      onTap: _launch,
                      leading: FlutterLogo(),
                      title: Text('Blog 1'),
                      subtitle: Text('about cloud'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 2, bottom: 6),
                      child: Text(
                          'Details about how cloud is emerging in big citeis'),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        // ignore: deprecated_member_use
                        ElevatedButton(
                          onPressed: _launch,
                          child: Text('Visit'),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Container(
            //height: 280,
            width: 350,
            child: Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 5,
                ),
                child: Column(
                  children: [
                    Image.asset('images/a1.jpg'),
                    Padding(padding: EdgeInsets.only(top: 4, left: 4)),
                    ListTile(
                      // make this work onLongPress: _launch,
                      leading: FlutterLogo(),
                      title: Text('Blog 2'),
                      subtitle: Text('about cyber'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 2, bottom: 6),
                      child: Text(
                          'Details about how cloud is emerging in big citeis'),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        // ignore: deprecated_member_use
                        ElevatedButton(
                          onPressed: _launch,
                          child: Text('Visit'),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Container(
            //height: 280,
            width: 350,
            child: Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 5,
                ),
                child: Column(
                  children: [
                    Image.asset('images/a5.jfif'),
                    Padding(padding: EdgeInsets.only(top: 4, left: 4)),
                    ListTile(
                      // make this work onLongPress: _launch,
                      onTap: _launch,
                      leading: FlutterLogo(),
                      title: Text('Blog 3'),
                      subtitle: Text('about space'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 2, bottom: 6),
                      child: Text(
                          'Details about how cloud is emerging in big citeis'),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        // ignore: deprecated_member_use
                        ElevatedButton(
                          onPressed: _launch,
                          child: Text('Visit'),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

_launch() async {
  const url = 'tel:+91 99*9999*9';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
