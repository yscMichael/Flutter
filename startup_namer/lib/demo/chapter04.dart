import 'package:flutter/material.dart';

//根据用户输入改变widget
//关于Flutter刷新机制：
//
//使用StatefulWidget和StatelessWidget区别：
//
//

class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  int _counter = 0;

  void _increment(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
            onPressed: null,
            child: Text('Increment'),
        ),
        Text('Count: $_counter')
      ],
    );
  }
}