import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycard/main.dart';

class DataScience extends MyApp {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Data Science',
      home: Scaffold(
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
                child: Text(
                  'The Login and Registration Project which uses the image of a user for registration rather than the credentials for convinent usage and maintainence of Administrators.'
                ),
              ),
              FlatButton(
                child: Text('Login Registration'),
                onPressed: (){},
              ),
            ],
          ),
          
        ),
      ),

    );

  }
}