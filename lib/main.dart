
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycard/courses.dart';
import 'package:mycard/datascience.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

_launchgit() async  {
  const url = 'https://github.com/vedantpople4';
  if(canLaunch(url) != null){
    launch(url);
  }
  else{
    throw 'Could not launch $url';
  }
}

_launchlinkedin() async{
  const url = 'https://www.linkedin.com/in/vedant-pople-b97783168/';
  if(canLaunch(url)!=null){
    launch(url);
  }
  else{
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Portfolio App',
        home: new HomePage(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/Data Science': (BuildContext context) => DataScience(),
          '/Courses' : (BuildContext context) => Courses(),
        });
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
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
                onPressed: (){
                  Route route = MaterialPageRoute(builder: (context) =>DataScience());
                  Navigator.push(context, route);
                  },
              ),
              FlatButton(
                child:Text('Certification Courses'),
                color: Colors.transparent,
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context)=>Courses());
                  Navigator.push(context, route);
                },
              ),
              Card (
                elevation: 0,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(

                        child: Text('LinkedIn'),
                        color: Colors.transparent,
                        onPressed: ()=> _launchlinkedin(),
                      ),
                      FlatButton(
                        child: Text('Github'),
                        color: Colors.transparent,
                        onPressed  : ()=> _launchgit(),
                      )
                    ]
                )
              )
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code, color: Colors.black),
            title : Text('Add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, color: Colors.black),
            title: Text('Code'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer, color: Colors.black),
            title: Text('Computer'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_split,color: Colors.black),
            title: Text('Github'),
          )
        ],
      ),
    );
  }
}

