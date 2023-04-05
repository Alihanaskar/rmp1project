import 'package:flutter/material.dart';
import 'package:project_1/models/qeustion.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int index;
  final QuestionData questionData;
  final Function onChangeAnswer;

  Quiz({Key? key, required this.index, required this.questionData, required this.onChangeAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            questionData.questions[index].title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        ...questionData.questions[index].answers
            .map((value) => Answer(
                  title: value['answer'],
                  onChangeAnswer: () => onChangeAnswer(value.containsKey('isCorrect') ? true : false),
                ))
            .toList(),
      ],
    );
  }
}
