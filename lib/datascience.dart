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
            children: <Widget>[
              Text('This is the Projects page.'),
              FlatButton(
                child: Text('Login Registration'),
              ),
            ],
          ),
          
        ),
      ),

    );

  }
}