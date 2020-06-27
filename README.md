# flutter_test_demos
Study flutter with desmo

[The Complete Flutter Development Bootcamp Using Dart](https://www.appbrewery.co/p/flutter-development-bootcamp-with-dart)

[Dart Dev](https://dart.dev/)

[Dart Pad](https://dartpad.dartlang.org/)

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

![xylophone-flutter](https://raw.githubusercontent.com/londonappbrewery/Images/master/xylophone-flutter.png)

``` flutter

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playerSound(int soundNumber) {
    final playCache = AudioCache();
    playCache.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playerSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.blue, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.yellow, soundNumber: 5),
              buildKey(color: Colors.purple, soundNumber: 6),
              buildKey(color: Colors.teal, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

```
