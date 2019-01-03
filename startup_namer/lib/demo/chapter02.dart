import 'package:flutter/material.dart';

//项目中是否使用MaterialApp完全是可选的
//Scaffold是Material中主要布局组件

class TutorialHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), tooltip: 'Navigation menu',onPressed: null),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), tooltip: 'Search',onPressed: null)
        ],
      ),
    );
  }
}