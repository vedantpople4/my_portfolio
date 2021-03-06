import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycard/main.dart';

class Courses extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title : 'Courses',
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Courses Done'),
            backgroundColor: Colors.black,
          ),
            body: SingleChildScrollView(

              scrollDirection: Axis.vertical,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>
                  [
                    Text('This is the Courses page.'),
                    Image(
                          image: AssetImage('images/cert1.JPG'),
                          width : 280.00,
                          height: 265.00,
                    ),
                    Text('This is the second certificate.'),
                    Image(
                      image: AssetImage('images/cert2.JPG'),
                      width : 280.00,
                      height : 265.00,
                    ),
                    Text('This is the third certificate.'),
                    Image(
                      image: AssetImage('images/cert3.JPG'),
                      width: 280.00,
                      height: 265.00,
                    ),
                    Text('This is the Fourth certificate.'),
                    Image(
                      image: AssetImage('images/cert4.JPG'),
                      width: 320.00,
                      height: 265.00,
                    ),
                    Image(
                      image: AssetImage('images/white.JPG'),

                    )
                  ],
            ),
        ),
    )
    );
  }
}

