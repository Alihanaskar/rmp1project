import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({required this.title, required this.answers});
}

class QuestionData {
  final _data = [

    Question(title: 'Какой из этих городов является столицей Франции?', answers: [
     {'answer': 'Милан',},
     {'answer': 'Париж','isCorrect': 1},
     {'answer': 'Мадрид',},
     {'answer': 'Берлин',},
    ]),
    Question(title: 'Какой металл используется для производства автомобильных батарей?', answers: [
     {'answer': 'Железо',},
     {'answer': 'Алюминий',},
     {'answer': 'Свинец','isCorrect': 1},
     {'answer': 'Никель',},
    ]),
    Question(title: 'Какой вид камня используется для изготовления скульптур?', answers: [
     {'answer': 'Милан','isCorrect': 1},
     {'answer': 'Париж',},
     {'answer': 'Мадрид',},
     {'answer': 'Берлин',},
    ]),
    Question(title: 'Какой из этих городов является столицей Франции?', answers: [
     {'answer': 'Печень',},
     {'answer': 'Поджелудочная железа',},
     {'answer': 'Желудок','isCorrect': 1},
     {'answer': 'Кишечник',},
    ]),
    Question(title: 'Какое животное является символом Китая?', answers: [
     {'answer': 'Панда','isCorrect': 1},
     {'answer': 'Лев',},
     {'answer': 'Слон',},
     {'answer': 'Обезьяна',},
    ]),
    Question(title: 'Кто написал роман "Война и мир"?', answers: [
     {'answer': 'Лев Толстой','isCorrect': 1},
     {'answer': 'Федор Достоевский',},
     {'answer': 'Александр Пушкин',},
     {'answer': 'Иван Тургенев',},
    ]),
    Question(title: 'В каком году произошла Российская революция?', answers: [
     {'answer': '1917','isCorrect': 1},
     {'answer': '1921',},
     {'answer': '1905',},
     {'answer': '1914',},
    ]),
    Question(title: 'Какая страна расположена на побережье Адриатического моря?', answers: [
     {'answer': 'Франция',},
     {'answer': 'Италия','isCorrect': 1},
     {'answer': 'Греция',},
     {'answer': 'Испания',},
    ]),
  ];
  List<Question> get questions => [..._data];
}
