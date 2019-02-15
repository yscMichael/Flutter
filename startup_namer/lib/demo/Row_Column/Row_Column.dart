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

//CrossAxisAlignment Propery
//row
class CrossAxisAlignment_row_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
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

//Column
class CrossAxisAlignment_column_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.end,
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
        textBaseline: TextBaseline.alphabetic,//与上面搭配使用
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
//CrossAxisAlignment.center和TextDirection.rtl搭配
class TextDirection_row_center_rtl_Propery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
//CrossAxisAlignment.center和TextDirection.ltr搭配
class TextDirection_row_center_ltr_Propery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: TextDirection.ltr,
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
//CrossAxisAlignment.start和TextDirection.ltr搭配
class TextDirection_Row_start_ltr_Propery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.ltr,
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
//CrossAxisAlignment.start和TextDirection.rtl
class TextDirection_Row_start_rtl_Propery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
//CrossAxisAlignment.start和VerticalDirection.down
class VerticalDirection_row_start_down_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.down,
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
    );
  }
}

//VerticalDirection Propery
//CrossAxisAlignment.start和VerticalDirection.up
class VerticalDirection_row_start_up_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.up,
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
        )
      ],
    );
  }
}

//MainAxisAlignment Propery
//MainAxisAlignment.start
class MainAxisAlignment_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.end,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

//MainAxisSize Propery
//MainAxisSize.max
class MainAxisSize_max_row_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow,
        child: Row(
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
//MainAxisSize.max
class MainAxisSize_max_Column_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow,
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
class MainAxisSize_min_row_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow,
        child: Row(
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


//MainAxisSize Propery
//MainAxisSize.min
class MainAxisSize_min_Column_Propery_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow,
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
