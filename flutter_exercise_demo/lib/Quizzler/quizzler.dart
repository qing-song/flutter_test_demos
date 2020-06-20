import 'package:flutter/material.dart';
import 'question-brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// Quizzler Page
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
    );
  }
}

QuestionBrain questionBrain = QuestionBrain();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Icon> scoreKeeper = [];

  var alertStyle = AlertStyle(
    animationType: AnimationType.fromTop,
    isCloseButton: true,
    isOverlayTapDismiss: true,
    descStyle: TextStyle(fontWeight: FontWeight.bold),
    animationDuration: Duration(milliseconds: 400),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.red,
    ),
  );

  void checkAnswer(bool userCheckAnswer) {
    bool isFinished = questionBrain.isFinished();
    print("isFinished = $isFinished");
    if (isFinished) {
      Alert(
        context: context,
        type: AlertType.warning,
        title: "Warning",
        desc: "you've reached the end of the quiz",
        buttons: [
          DialogButton(
            child: Text(
              "OK OKOK",
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
            onPressed: () {
              questionBrain.reset();
            },
            width: 120,
          )
        ],
      ).show();

    } else {
      bool correntAnswer = questionBrain.getCorrentAnswer();
      if (correntAnswer == userCheckAnswer) {
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,),
        );
        print("corrent answer");
      } else {
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,),
        );
        print("wrong answer");
      }
      setState(() {
        questionBrain.nextQuestion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                checkAnswer(false);
              },
            ),
          ),
        ),
        Expanded(
          child: Wrap(
            spacing: 2,
            runSpacing: 2,
            children: scoreKeeper,
          ),
        ),
      ],
    );
  }
}
