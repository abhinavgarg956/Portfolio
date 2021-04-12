import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: unused_import
import 'package:simple_app/widgets/draggable.dart';
import 'package:simple_app/widgets/expo3.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widgets/Skills.dart';
// ignore: unused_import
import 'widgets/blogs.dart';
import 'widgets/expo.dart';
import 'widgets/expo2.dart';
import 'widgets/shadowtext.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: buildThemeData(),
      home: HomePage(),
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      primarySwatch: Colors.amber,
      accentColor: Colors.redAccent,
      // errorColor: Colors.red,
      fontFamily: 'Quicksand',
      textTheme: ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            button: TextStyle(color: Colors.white),
          ),
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  int _currentindex = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  final ScrollController _homeController = ScrollController();
  void _scrollit() {
    _homeController.animateTo(
      0.0,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[0],
      appBar: AppBar(
        title: Text(
          'Portfolio',
          style: TextStyle(
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        actions: [
          IconButton(icon: Icon(Icons.call), onPressed: _launchPhone),
          IconButton(icon: Icon(Icons.mail), onPressed: _launchURL),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.amber[50],
                  ),
                ),
                child: Image.asset(
                  'images/d2.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(''),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Image.asset(
                        'images/dp.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Andriod Developer',
                            style: TextStyle(
                                fontFamily: 'DancingScript',
                                fontSize: 45,
                                shadows: [
                                  Shadow(
                                      // bottomLeft
                                      offset: Offset(-1.5, -1.5),
                                      color: Colors.white),
                                  Shadow(
                                      // bottomRight
                                      offset: Offset(1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // topRight
                                      offset: Offset(1.5, 1.5),
                                      color: Colors.white),
                                  Shadow(
                                      // topLeft
                                      offset: Offset(-1.5, 1.5),
                                      color: Colors.white),
                                ]),
                          ),
                        ),
                      ],
                    ),
                    //icons
                    Card(
                      color: Colors.amber[100],
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: _launchLI,
                              child: Tooltip(
                                message: 'LinkedIn',
                                waitDuration: Duration(milliseconds: 500),
                                child: Icon(
                                  FontAwesomeIcons.linkedin,
                                  color: Colors.blueGrey[300],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: _launchGH,
                              child: Tooltip(
                                message: 'Github',
                                waitDuration: Duration(milliseconds: 500),
                                child: Icon(
                                  FontAwesomeIcons.githubSquare,
                                  color: Colors.blueGrey[300],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: _launchTW,
                              child: Tooltip(
                                message: 'Twitter',
                                waitDuration: Duration(milliseconds: 500),
                                child: Icon(
                                  FontAwesomeIcons.twitterSquare,
                                  color: Colors.blueGrey[300],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: _launchIG,
                              child: Tooltip(
                                message: 'Instagram',
                                waitDuration: Duration(milliseconds: 500),
                                child: Icon(
                                  FontAwesomeIcons.instagramSquare,
                                  color: Colors.blueGrey[300],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: _launchRD,
                              child: Tooltip(
                                message: 'Reddit',
                                waitDuration: Duration(milliseconds: 500),
                                child: Icon(
                                  FontAwesomeIcons.redditSquare,
                                  color: Colors.blueGrey[300],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Name  :   ',
                            style: TextStyle(
                                fontFamily: 'DancingScript',
                                fontSize: 35,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 3
                                  ..color = Colors.orange,
                                shadows: [
                                  Shadow(
                                      // bottomLeft
                                      offset: Offset(-1.5, -1.5),
                                      color: Colors.white),
                                  Shadow(
                                      // bottomRight
                                      offset: Offset(1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // topRight
                                      offset: Offset(1.5, 1.5),
                                      color: Colors.white),
                                  Shadow(
                                      // topLeft
                                      offset: Offset(-1.5, 1.5),
                                      color: Colors.white),
                                ]),
                          ),
                          Text('Abhinav Garg',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Pacifico',
                              ))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Company  :   ',
                          style: TextStyle(
                              fontFamily: 'DancingScript',
                              fontSize: 35,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 3
                                ..color = Colors.orange,
                              shadows: [
                                Shadow(
                                    // bottomLeft
                                    offset: Offset(-1.5, -1.5),
                                    color: Colors.white),
                                Shadow(
                                    // bottomRight
                                    offset: Offset(1.5, -1.5),
                                    color: Colors.black),
                                Shadow(
                                    // topRight
                                    offset: Offset(1.5, 1.5),
                                    color: Colors.white),
                                Shadow(
                                    // topLeft
                                    offset: Offset(-1.5, 1.5),
                                    color: Colors.white),
                              ]),
                        ),
                        Text('Daffodil Software',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Pacifico',
                            )),
                      ],
                    ),
                    ShadowText('Skills'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Skills(),
                      ],
                    ),

                    ShadowText("Exposure"),
                    Expo('Experience'),
                    Expo2('Education'),
                    Expo3('Licenses & certifications'),
                    ShadowText('Blogs'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Blogs(), //blogs
                      ],
                    ),
                    //  Code(), //dragable
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {
                final FancyBottomNavigationState fState = bottomNavigationKey
                    .currentState as FancyBottomNavigationState;
                fState.setPage(2);
              }),
          TabData(
              iconData: Icons.analytics, title: 'Exposure', onclick: _scrollit),
          TabData(iconData: Icons.add_comment_sharp, title: 'Blogs'),
        ],
        onTabChangedListener: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}

// ignore: unused_element
_launchPhone() async {
  const url = 'tel:+91 99*9999*9';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// ignore: unused_element
_launchURL() async {
  const url = 'mailto:abhinavgarg956@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchLI() async {
  const url = 'https://www.linkedin.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchGH() async {
  const url = 'https://github.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchTW() async {
  const url = 'https://twitter.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchIG() async {
  const url = 'https://www.instagram.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchRD() async {
  const url = 'https://www.reddit.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
