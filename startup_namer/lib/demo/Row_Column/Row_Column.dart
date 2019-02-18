import 'package:flutter/material.dart';

//Row
class Row_Text_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.orange,
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.blue,
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.purple,
              child: FlutterLogo(
                size: 60.0,
              ),
            )
          ],
        ),
    );
  }
}

//Column
class Column_Text_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.orange,
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
          Container(
            color: Colors.green,
            child: FlutterLogo(
              size: 60.0,
            ),
          ),
          Container(
            color: Colors.purple,
            child: FlutterLogo(
              size: 60.0,
            ),
          )
        ],
      ),
    );
  }
}

//1.1、CrossAxisAlignment Propery
//CrossAxisAlignment_start
//row和Column
class CrossAxisAlignment_start_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      //child: Row(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.pink),
          Icon(Icons.adjust, size: 50.0, color: Colors.purple),
          Icon(Icons.adjust, size: 50.0, color: Colors.greenAccent),
          Container(
            color: Colors.orange,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.cyan),
        ],
      ),
    );
  }
}

//CrossAxisAlignment.center
//row和Column
class CrossAxisAlignment_center_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
      //child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.pink),
          Icon(Icons.adjust, size: 50.0, color: Colors.purple),
          Icon(Icons.adjust, size: 50.0, color: Colors.greenAccent),
          Container(
            color: Colors.orange,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.cyan),
        ],
      ),
    );
  }
}

//CrossAxisAlignment.end
//row和Column
class CrossAxisAlignment_end_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      //child: Row(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.pink),
          Icon(Icons.adjust, size: 50.0, color: Colors.purple),
          Icon(Icons.adjust, size: 50.0, color: Colors.greenAccent),
          Container(
            color: Colors.orange,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.cyan),
        ],
      ),
    );
  }
}

//CrossAxisAlignment.stretch
//row和Column
class CrossAxisAlignment_stretch_Propery_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
      //child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.pink),
          Icon(Icons.adjust, size: 50.0, color: Colors.purple),
          Icon(Icons.adjust, size: 50.0, color: Colors.greenAccent),
          Container(
            color: Colors.orange,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.cyan),
        ],
      ),
    );
  }
}


//CrossAxisAlignment.baseline
//不使用
class CrossAxisAlignment_withOutbaseline_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Flutter",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 30.0
            ),
          ),
          Text(
            "Flutter",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20.0
            ),
          ),
        ],
      ),
    );
  }
}

//CrossAxisAlignment.baseline
//使用
class CrossAxisAlignment_withbaseline_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,//与上面搭配使用、否则会报错
        children: <Widget>[
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30.0
            ),
          ),
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0
            ),
          ),
        ],
      ),
    );
  }
}

//MainAxisAlignment Propery
//MainAxisAlignment.start
class MainAxisAlignment_start_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      //child: Row(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.end,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.pink),
          Icon(Icons.adjust, size: 50.0, color: Colors.purple),
          Icon(Icons.adjust, size: 50.0, color: Colors.greenAccent),
          Container(
            color: Colors.orange,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.cyan),
        ],
      ),
    );
  }
}

//TextDirection Propery
//TextDirection.ltr
class TextDirection_ltr_Propery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
      //child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.end,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30.0
            ),
          ),
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0
            ),
          ),
        ],
      ),
    );
  }
}

//TextDirection Propery
//TextDirection.rtl
class TextDirection_rtl_Propery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      //child: Row(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30.0
            ),
          ),
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0
            ),
          ),
        ],
      ),
    );
  }
}

//VerticalDirection Propery
//VerticalDirection.down
class VerticalDirection_down_Propery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      //child: Row(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        verticalDirection: VerticalDirection.down,//默认是VerticalDirection.down
        children: <Widget>[
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30.0
            ),
          ),
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0
            ),
          ),
        ],
      ),
    );
  }
}

//VerticalDirection Propery
//VerticalDirection.up
class VerticalDirection_up_Propery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      //child: Row(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        verticalDirection: VerticalDirection.up,//默认是VerticalDirection.down
        children: <Widget>[
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30.0
            ),
          ),
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0
            ),
          ),
        ],
      ),
    );
  }
}

//MainAxisSize Propery
//MainAxisSize.max
class MainAxisSize_max_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow,
        //child: Row(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50.0,
              width: 50.0,
            ),
            Icon(Icons.adjust, size: 50.0, color: Colors.pink),
            Icon(Icons.adjust, size: 50.0, color: Colors.purple),
            Icon(Icons.adjust, size: 50.0, color: Colors.greenAccent),
            Container(
              color: Colors.orange,
              height: 50.0,
              width: 50.0,
            ),
            Icon(Icons.adjust, size: 50.0, color: Colors.cyan),
          ],
        ),
      ),
    );
  }
}

//MainAxisSize Propery
//MainAxisSize.min
class MainAxisSize_min_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow,
        //child: Row(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50.0,
              width: 50.0,
            ),
            Icon(Icons.adjust, size: 50.0, color: Colors.pink),
            Icon(Icons.adjust, size: 50.0, color: Colors.purple),
            Icon(Icons.adjust, size: 50.0, color: Colors.greenAccent),
            Container(
              color: Colors.orange,
              height: 50.0,
              width: 50.0,
            ),
            Icon(Icons.adjust, size: 50.0, color: Colors.cyan),
          ],
        ),
      ),
    );
  }
}