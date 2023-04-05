import 'package:flutter/material.dart';
import 'package:project_1/models/qeustion.dart';
import 'package:project_1/widjeds/answer.dart';
import 'package:project_1/widjeds/progressBar.dart';
import 'package:project_1/widjeds/quiz.dart';
import 'package:project_1/widjeds/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearstate() => setState(() {
    _questionIndex =0;
    _countResult = 0;
    _icons = []; 
  });

  void _onChangeAnswer (bool isCorrect) => setState(() {
    if (isCorrect){
      _icons.add(Icon(Icons.brightness_1,color: Color(0xffbd27ff)));
      _countResult++;
    }
    else{
      _icons.add(Icon(Icons.brightness_1,color: Color.fromARGB(0, 0, 0, 0)));
    }

    _questionIndex+=1;
  });

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: const Color(0xff2a375a),
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              ProgressBar(
                icons: _icons,
                count: _questionIndex,
                total: data.questions.length,
              ),
              

              _questionIndex < data.questions.length? Quiz(
                index:_questionIndex,
                questionData: data,
                onChangeAnswer:  _onChangeAnswer,
              ):Result(count: _countResult, total: data.questions.length, onClearState:_clearstate)

            ],
          ),
        ),
        );
  }
}