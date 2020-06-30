import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycard/courses.dart';
import 'package:mycard/datascience.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

_launchgit() async {
  const url = 'https://github.com/vedantpople4';
  if (canLaunch(url) != null) {
    launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchlinkedin() async {
  const url = 'https://www.linkedin.com/in/vedant-pople-b97783168/';
  if (canLaunch(url) != null) {
    launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyApp',
        home: new HomePage(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/Data Science': (BuildContext context) => DataScience(),
          '/Courses': (BuildContext context) => Courses(),
        });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/vedant.JPG'),
              radius: 50.0,
              backgroundColor: Colors.redAccent,
            ),
            Text(
              'Vedant Pople',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'Machine Learning',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'SansSourcePro',
              ),
            ),
            Text(
              'Flutter Dev',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'SansSourcePro',
              ),
            ),
            FlatButton(
              child: Text('Projects'),
              hoverColor: Colors.redAccent,
              color: Colors.transparent,
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => DataScience());
                Navigator.push(context, route);
              },
            ),
            FlatButton(
              child: Text('Certificates'),
              color: Colors.transparent,
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => Courses());
                Navigator.push(context, route);
              },
            ),
            Card(
                elevation: 0,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        child: Text('LinkedIn'),
                        color: Colors.transparent,
                        onPressed: () => _launchlinkedin(),
                      ),
                      FlatButton(
                        child: Text('Github'),
                        color: Colors.transparent,
                        onPressed: () => _launchgit(),
                      )
                    ]))
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 48,
        color: Colors.black,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.code, size: 20, color: Colors.white),
          Icon(Icons.computer, size: 20, color: Colors.white),
          Icon(Icons.add_circle, size: 20, color: Colors.white),
          Icon(Icons.call_merge, size: 20, color: Colors.white),
          Icon(Icons.hourglass_empty, size: 20, color: Colors.white),
        ],
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          debugPrint('Current index is $index');
        },
      ),
    );
  }
}
