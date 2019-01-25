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
        child: Text("Flutter Cheatsheet",
          style: TextStyle(
              fontSize: 30.0
          ),
        ),
        //不加这句话，Container会自适应child大小;加上以后会充满屏幕
        //alignment: FractionalOffset(0.5, 0.5),
        alignment: AlignmentDirectional.center,//等价于上面
      ),
    );
  }
}