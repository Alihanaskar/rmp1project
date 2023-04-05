import 'package:flutter/material.dart';
import 'package:project_1/pages/homa-page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.indigo,
      textTheme: TextTheme(
        caption: TextStyle(
          fontSize: 22,
          color: Colors.white,),),
          fontFamily: 'Georgia',
          
      ),

      home: HomePage(),
    );
  }
}


