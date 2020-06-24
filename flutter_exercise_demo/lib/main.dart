import 'package:flutter/material.dart';
import 'package:flutterexercisedemo/Quizzler/quizzler.dart';
import 'package:flutterexercisedemo/XylophoneApp/xylophone_app.dart';


void main() => runApp(HomePageController());

// Home Page
class HomePageController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo List",
      theme: ThemeData(
          primaryColor: Colors.teal
      ),
      home: HomePage(title: "Flutter Demo Home Page"),
      routes: {
        "XylophoneApp" : (BuildContext context) => XylophoneApp(),
      },
    );
  }
}

class HomePage extends StatefulWidget {

  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "XylophoneApp");
            },
            child: Text("XylophoneApp"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push<String>(context, new MaterialPageRoute(builder: (BuildContext context){
                  return MiCard();
                }));
              },
              child: Text("MiCard"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push<String>(context, new MaterialPageRoute(builder: (BuildContext context){
                  return ContainerExercise();
                }));
              },
              child: Text("XylophoneApp"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push<String>(context, new MaterialPageRoute(builder: (BuildContext context){
                  return Quizzler();
                }));
              },
              child: Text("Quizzler"),
            ),
          ],
        ),
      ),
    );
  }
}

// ContainerExercise
class ContainerExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100.0,
                color: Colors.red,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                width: 100.0,
                color: Colors.blue,
              ),

            ],
          ),
        ),
    );
  }
}



// mi_card
class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("MiCard"),
        ),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/angela.jpg'),
                ),
                Text(
                  'Angela Yu',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+44 123 456 789',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'angela@email.com',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro'),
                      ),
                    ))
              ],
            )),
    );
  }
}

