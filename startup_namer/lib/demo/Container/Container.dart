import 'package:flutter/material.dart';

//Container颜色属性之Colors
class Color_Property_Colors extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          //color: Colors.green,//正常颜色
          //color:Colors.green[200],//带有阴影(相当于是透明度)
          color: Colors.green.shade200,//同上
        ),
    );
  }
}

//Container颜色属性之Color
class Color_Property_Color extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //color: Color(0xFFFFFFFF),//一定是8位,否则报错
        //color: Color.fromARGB(255, 66, 165, 245),
        color: Color.fromRGBO(66, 165, 245, 1.0),//作用同上
      ),
    );
  }
}

//Container属性之Child
class Child_Property extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromRGBO(66, 165, 245, 1.0),
        child: Text("Flutter Cheatsheet"),
      ),
    );
  }
}

//Container属性之Alignment
class Alignment_Property extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        child: Text("Flutter Cheatsheet",
             style: TextStyle(
               fontSize: 30.0
             ),
        ),
        //不加这句话，Container会自适应child大小;加上以后会充满屏幕
        //alignment: Alignment(0.0, 0.0),
        alignment: Alignment.center,//等价于上面
      ),
    );
  }
}

//Container属性之FractionalOffset
class Alignment_FractionalOffset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        child: Text("Flutter Cheatsheet",
          style: TextStyle(
              fontSize: 30.0
          ),
        ),
        //不加这句话，Container会自适应child大小;加上以后会充满屏幕
        //alignment: FractionalOffset(0.5, 0.5),
        alignment: FractionalOffset.center,//等价于上面
      ),
    );
  }
}

//Container属性之AlignmentDirectional
class Alignment_AlignmentDirectional extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        child: Text("Flutter",
          style: TextStyle(
              fontSize: 15.0
          ),
          //textDirection: TextDirection.ltr,//正常,从左向右(不影响alignment)
          textDirection: TextDirection.ltr,//从右向左(不影响alignment)
        ),
        //不加这句话，Container会自适应child大小;加上以后会充满屏幕
        alignment:AlignmentDirectional(-1.0, 1.0),
        //alignment: AlignmentDirectional.bottomStart,//等价于上面
      ),
    );
  }
}

//Container属性之Constraints(无子控件)
class Constraints_Property_NoChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          color: Colors.green,
          constraints: BoxConstraints(
            maxHeight: 300,
            maxWidth: 200,
            minWidth: 150,
            minHeight: 150,
          ),
        ),
      ),
    );
  }
}

//Container属性之Constraints(有子控件)
class Constraints_Property_HasChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          color: Colors.green,
          //child: Text("Flutter"),
          child: Text("Flutter Cheatsheet Flutter Cheatsheet"),
          constraints: BoxConstraints(
            maxHeight: 300,
            maxWidth: 200,
            minWidth: 150,
            minHeight: 150,
          ),
        ),
      ),
    );
  }
}

//Container属性之Constraints(有子控件、充满整个屏幕)
class Constraints_Property_HasChild_AllScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          color: Colors.green,
          //child: Text("Flutter"),
          child: Text("Flutter"),
          //constraints: BoxConstraints.expand(),
          constraints: BoxConstraints.expand(
            width: 350,
            height: 400,
          ),
        ),
      ),
    );
  }
}

//Container属性之Margin
//EdgeInsets.all()
class Margin_Property_EdgeInsets_all extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          color: Colors.green,
          margin: EdgeInsets.all(20.0),
        ),
      ),
    );
  }
}

//EdgeInsets.symmetric()
class Margin_Property_EdgeInsets_symmetric extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          color: Colors.green,
          margin: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 50.0,
          ),
        ),
      ),
    );
  }
}

//EdgeInsets.fromLTRB()
class Margin_Property_EdgeInsets_fromLTRB extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          color: Colors.green,
          margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 50.0)
        ),
      ),
    );
  }
}

//EdgeInsets.only()
class Margin_Property_EdgeInsets_only extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
            color: Colors.green,
            margin: EdgeInsets.only(
              left: 20.0,
              bottom: 40.0,
              top: 50.0,
            )
        ),
      ),
    );
  }
}

//Padding Property
//EdgeInsets.all
class Padding_Property_EdgeInsets_all extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          margin: EdgeInsets.only(
            left: 20.0,
            bottom: 40.0,
            top: 50.0,
          ),
          padding: EdgeInsets.all(10.0),//设置内部Text控件边距
          color: Colors.green,
          child: Text("Flutter Cheatsheet"),
          //不设置这个Container和子控件一样大小、这样margin设置也就没有意义了
          constraints: BoxConstraints.expand(),
        ),
      ),
    );
  }
}


//Decoration Property
//class Decoration_Property


//ForegroundDecoration Property

//Transform Property
class Transform_Property extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 66, 165, 245),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        padding: EdgeInsets.all(40.0),
        color: Colors.green,
        child: Text("Flutter Cheatsheet"),  
        transform: Matrix4.rotationZ(0.5),
      ),
    );
  }
}


