import 'package:flutter/material.dart';

//自定义按钮展示

class TestButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyButton(),
      )
    );
  }
}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('MyButton click');
      },
      child: Container(
        height: 36.0,
        width: 80,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal:8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}