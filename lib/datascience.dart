import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycard/main.dart';
import 'package:url_launcher/url_launcher.dart';

launchlogin() async  {
  const url = 'https://github.com/vedantpople4/Login-and-registration';
  if(canLaunch(url) != null){
    launch(url);
  }
  else{
    throw 'Could not launch $url';
  }
}

lauchcalc() async {
  const url = 'https://github.com/vedantpople4/flutter_calculator';
  if(canLaunch(url)!=null){
    launch(url);
  }
  else{
    throw 'Could no launch $url';
  }
}


class DataScience extends MyApp {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Data Science',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar (
          title: Text('Projects Page'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('This is the Projects page.'),
              Card(
                elevation: 0,
                child: Column(
                  children: <Widget>[
                    Text('This project uses image of a user for registration.'),
                    Text('This helps the admin manage for maintainable purposes.'),
                  ],
                ),
              ),
              FlatButton(
                child: Text('Login Registration'),
                onPressed: ()=>launchlogin(),
              ),
              Card(
                elevation : 0,
                child: Column(
                  children: <Widget>[
                    Text('This project is a calculator App.'),
                    Text('This app can do addition, subtraction, multiplication '),
                    Text('and division of two numbers. '),
                  ],
                ),
              ),
              FlatButton(
                child: Text('Calculator App'),
                onPressed: ()=> lauchcalc(),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Text('This repo contains Machine Learning Projects'),
                  ],
                ),
              ),
              FlatButton()
            ],
          ),
        ),
      ),

    );

  }
}