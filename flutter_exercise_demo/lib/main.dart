import 'package:flutter/material.dart';
import 'package:flutterexercisedemo/Destini/destini.dart';
import 'package:flutterexercisedemo/Quizzler/quizzler.dart';
import 'package:flutterexercisedemo/XylophoneApp/xylophone_app.dart';
import 'package:flutterexercisedemo/mi_card/mi_card.dart';


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
        backgroundColor: Colors.teal,
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
            RaisedButton(
              onPressed: () {
                Navigator.push<String>(context, new MaterialPageRoute(builder: (BuildContext context){
                  return Destini();
                }));
              },
              child: Text("Destini"),
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


