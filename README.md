# flutter_test_demos
Study flutter with desmo


![Layout-Challenge-Specs.png](https://ws1.sinaimg.cn/mw690/80ceb2dbgy1gf5jmazmcxj215m1gf76s.jpg)

``` flutter
class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                height: 200.0,
                color: Colors.amber[600],
                child: Text('Container 1'),
              ),
              SizedBox(
                width: 30,),
              Container(
                height: 100.0,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                height: 100.0,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.ac_unit),
            onPressed: () {
            log('test');
           },
          )
      ),
    );
  }
}
```

![](https://www.filepicker.io/api/file/GZhzTooBQHirOLUn7VZq)

# Magic 8 Ball app


``` flutter
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text('Ask Me Anything'),
        ),
        body: Ball(),
      )
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  void randomBallNumber() {
    ballNumber = Random().nextInt(5) + 1;
    print('i clicked $ballNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              randomBallNumber();
            });
          },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}

```