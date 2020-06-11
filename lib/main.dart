
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycard/datascience.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Portfolio App',
        home: new HomePage(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/Data Science': (BuildContext context) => DataScience()
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
                  fontSize: 40.0,
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
                  color: Colors.yellow[500],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SansSourcePro',
                ),
              ),
              Text(
                'Flutter Dev',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.yellow[500],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SansSourcePro',
                ),
              ),
              Card(
                color: Colors.yellow,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 85.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        size: 20.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '9799774711',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.yellow,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 85.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        size: 20.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'vedantpople4@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              FlatButton(
                child: Text('Machine Learning'),
                color: Colors.yellowAccent,
                onPressed: (){
                  Route route = MaterialPageRoute(builder: (context) =>DataScience());
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
                        color: Colors.yellowAccent,
                        onPressed: (){},
                      ),
                      FlatButton(
                        child: Text('Github'),
                        color: Colors.yellowAccent,
                        onPressed: (){},
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
            icon: Icon(Icons.home, color: Colors.yellowAccent),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, color: Colors.yellowAccent,),
            title : Text('Add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code, color: Colors.yellowAccent),
            title: Text('Code'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer, color: Colors.yellowAccent),
            title: Text('Computer'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_split,color: Colors.yellowAccent),
            title: Text('Github'),
          )


        ],

      ) ,

      );
  }
}

