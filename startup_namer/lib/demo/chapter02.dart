import 'package:flutter/material.dart';

//MaterialApp组件使用
//项目中是否使用MaterialApp完全是可选的
//Scaffold是Material中主要布局组件

class TutorialHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //Scaffold是Material中主要布局组件
    return Scaffold(
      //头部
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), tooltip: 'Navigation menu',onPressed: null),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), tooltip: 'Search',onPressed: null)
        ],
      ),
      //body占屏幕的大部分
      body: Center(
        child: Text('Hello world!'),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: 'Add',
          child: Icon(Icons.add),
          onPressed: null
      ),
    );
  }
}