import 'package:bmi_calculator/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz_brain.dart';

void main() => runApp(unit1_test());

class unit1_test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> IconList = [];
  QuizBrain quizBrain = new QuizBrain();
  void reset() {
    if (quizBrain.isFinished() == true) {
      quizBrain.resestQstNumber();
      IconList.clear();

    }
  }

  void chekAnsewer(bool userClick) {
    setState(() {
      if (quizBrain.isFinished() == true) {
  showDialog(context: context,builder: (context){
    return AlertDialog(backgroundColor: Colors.white,title: Center(
      child: Text("FIN DU QUIZ",

        style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 30),),
    ),content:Image.asset("image/lightbulb.png"),);
  });

        /* Alert(context: context,
            title: "Finished!",
            desc: "You've reached the end of the quiz..").show();*/
      }
      if (quizBrain.getAnswer() == userClick) {
        IconList.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        IconList.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      reset();
      quizBrain.nextQst();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                quizBrain.getQst(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  chekAnsewer(true);
                },
                child: Text(
                  "True",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  chekAnsewer(false);
                },
                child: Text(
                  "False",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
        Row(children: IconList),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
