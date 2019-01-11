import 'package:flutter/material.dart';

//根据用户输入改变widget
//关于Flutter刷新机制：
//调用setState，执行完里面的程序，会自动调用Widget build(BuildContext context)方法
//
//使用StatefulWidget和StatelessWidget区别：
//StatefulWidget有状态,StatelessWidget没有状态
//
//为什么StatefulWidget和State是单独的对象
//StatefulWidget包含Widget和State,但是Widget是临时对象,用于构建当前状态下的应用程序
//而State对象在多次调用build()之间保持不变，允许它们记住信息(状态).
//

//计算器中按钮和文字展示逻辑分开
class TestCalculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Counter(),
      ),
    );
  }
}

//按钮
class CounterIncrementor extends StatelessWidget{
  CounterIncrementor({this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text('Increment'),
    );
  }
}

//文字
class CounterDisplay extends StatelessWidget{
  CounterDisplay({this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return new Text('Count:$count');
  }
}

//逻辑
class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  int _counter = 0;
  //调用方法setState
  void _increment(){
    setState(() {
      _counter++;
    });
  }

//  @override
//  Widget build(BuildContext context) {
//    return Row(
//      children: <Widget>[
//        RaisedButton(
//            onPressed: null,
//            child: Text('Increment'),
//        ),
//        Text('Count: $_counter')
//      ],
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CounterIncrementor(onPressed: _increment),
      CounterDisplay(count: _counter)
    ],
    );
  }
}