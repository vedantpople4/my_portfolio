
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
        backgroundColor: Colors.black,
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
                  color: Colors.yellowAccent,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'DATA SCIENTIST || FLUTTER DEV',
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
                child: Text('Data Science'),
                color: Colors.yellowAccent,
                onPressed: (){
                  Route route = MaterialPageRoute(builder: (context) =>DataScience());
                  Navigator.push(context, route);
                  },
              )
            ],
          ),
        ),
        drawer : Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text(''),
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2014/05/02/21/50/home-office-336378_1280.jpg'
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Data Science'),
                  onTap: (){
                    Route route = MaterialPageRoute(builder: (context) =>DataScience());
                    Navigator.push(context, route);
                  },
                ),

              ],
            )
        ),
      );
  }
}

