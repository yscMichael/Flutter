import 'package:flutter/material.dart';

class image_widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Image(
            image: AssetImage("images/JL-Logo-150.png"),
            width: 50,
            height: 50,
            //color: Colors.red,
            //colorBlendMode: BlendMode.srcIn,
            fit: BoxFit.contain,
        ),
        //不加这句话会自动适应子控件大小、否则会充满整个屏幕
        alignment: Alignment.center,
      ),
    );
  }
}

//child: Image(
//image:AssetImage("images/JL-Logo-150.png"),
//width: 50.0,
//height: 50.0,
//)