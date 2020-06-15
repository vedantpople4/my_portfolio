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
          child: Text('This is the Courses page.'),
        ),
      ),

    );

  }
}