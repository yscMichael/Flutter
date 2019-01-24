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
        //color: Color.fromRGBO(66, 165, 245, 1.0),//作用同上
      ),
    );
  }
}
