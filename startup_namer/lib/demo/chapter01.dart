import 'package:flutter/material.dart';

//主体内容
class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //Material是UI呈现的"一张纸"
    return Material(
      //Column是垂直方向的线性布局
      child: Column(
        children: <Widget>[
            MyAppBar(
              title: Text(
                'Example title',
                style: Theme.of(context).primaryTextTheme.title,
              ),
            ),
          //这意味着它会填充尚未被其他子项占用的的剩余可用空间
          //Expanded可以拥有多个children,然后使用flex参数来确定他们占用剩余空间的比例
          Expanded(
              child: Center(
                child: Text('Hello,world!'),
              )
          )
        ],
      ),
    );
  }
}

//头
class MyAppBar extends StatelessWidget{
  MyAppBar({this.title});
  //Widget 子类中的字段往往都会定义为"final"
  final Widget title;
  @override
  Widget build(BuildContext context) {
    //容器
    return Container(
      //单位是逻辑上的像素(并非真实的像素,类似于浏览器中的像素)
      height: 88.0,
      //padding: const  EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.only(left: 0,top: 44,right: 0,bottom: 0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      //Row是水平方向的线性布局
      child: Row(
        //列表项的类型是<Widget>
        children: <Widget>[
          IconButton(
              icon:Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null
          ),
          Expanded(
              //child:title
            child: Center(
              child: title,
            ),
          ),
          IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: null
          )
        ],
      ),
    );
  }
}