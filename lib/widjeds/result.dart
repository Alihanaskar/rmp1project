import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final count;
  final total;
  final VoidCallback onClearState;

  Result({Key? key, this.count, this.total, required this.onClearState}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String msg ='';
    Widget img;
    if( 0<= count && count <= 3 ){
      msg = 'Темная сторона \n не для тебя ';
      img = Image.asset('assets/images/bad.jpeg');
    }
    else if ((4 <= count && count <=7 )){
      msg = 'совсем чуть-чуть';
      img = Image.asset('assets/images/norm.png');
    }
    else{
      msg = 'Поздравляю';
      img = Image.asset('assets/images/good.jpeg');
    }

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 0.0,
            offset: Offset(2,5),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(colors: [
          Color(0xFF5337ff),
          Color(0xff8131ff),
          Color(0xffbd27ff),
        ]),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),

          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),

          Divider(
            color: Colors.white,
          ),
          Text(
            'Верно ответил на $count на $total',
          ),
          Divider(
            color: Colors.white,
          ),

          TextButton(
            child: Text('еще раз'),
            onPressed: onClearState,
          ),

        ],
      ),
    );
  }
}
