import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycard/main.dart';

class DataScience extends MyApp {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Data Science',
      home: Scaffold(
        body: Center(
          child: Text('this is the first navigated page'),
        ),
      ),

    );

  }
}