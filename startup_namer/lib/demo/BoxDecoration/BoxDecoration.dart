import 'package:flutter/material.dart';

//Colors
class BoxDecoration_Colors_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple
        ),
        //color: Colors.green,//二者不能同时出现
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}

//Gradient Property
//默认属性
class Gradient_Property_default_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          gradient: LinearGradient(
              colors: [Colors.red, Colors.cyan],
          )
        ),
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}

//Gradient Property
//begin和end属性
class Gradient_Property_beginAndEnd_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.purple,
            gradient: LinearGradient(
              colors: [Colors.red, Colors.cyan],
              begin: Alignment.centerRight,
              //end: Alignment.centerLeft
              end: Alignment(-1.0, -1.0)//效果同上
            ),
        ),
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}

//TileMode property
//TileMode.clamp
class TileMode_Clamp_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          gradient: LinearGradient(
              colors: [Colors.red, Colors.cyan],
              begin: Alignment.centerRight,
              end: Alignment(0.8,0.0),
              tileMode: TileMode.clamp
          )
        ),
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}

//TileMode property
//TileMode.mirror
class TileMode_Mirror_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          gradient: LinearGradient(
              colors: [Colors.red, Colors.cyan],
              begin:Alignment.centerRight,
              end: Alignment(0.8,0.0),
              tileMode: TileMode.mirror
          ),
        ),
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}

//TileMode property
//TileMode.repeated
class TileMode_Repeated_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          gradient: LinearGradient(
              colors: [Colors.red, Colors.cyan],
              begin: Alignment.centerRight,
              end: Alignment(0.8,0.0),
              tileMode: TileMode.repeated
          )
        ),
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}

//Gradient Property
//Stops属性
class Stops_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          gradient: LinearGradient(
              colors: [Colors.red,Colors.cyan,Colors.purple,Colors.lightGreenAccent],
              begin:Alignment.centerRight,
              end: Alignment.centerLeft,
              tileMode: TileMode.clamp,
              stops: [0.3,0.5,0.6,0.7]//要与上面数组颜色个数一致，否则显示不出来
          ),
        ),
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}

//RadialGradient
class RadialGradient_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          gradient: RadialGradient(
              colors: [Colors.red, Colors.cyan, Colors.purple, Colors.lightGreenAccent],
              center: Alignment(-0.7, -0.6),
              radius: 0.2,
              tileMode: TileMode.clamp,
              stops: [0.3, 0.5, 0.6, 0.7]
          )
        ),
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}

//Image Property
class Image_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          gradient: RadialGradient(
              colors: [Colors.red, Colors.cyan, Colors.purple, Colors.lightGreenAccent],
              center: Alignment(0.0, 0.0),
              radius: 0.5,
              tileMode: TileMode.clamp,
              stops: [0.3, 0.5, 0.9, 1.0]
          ),
          image: DecorationImage(
            image: NetworkImage("http://jlouage.com/images/author.jpg"),
        ),
      ),
      child: FlutterLogo(
        size: 200.0,
      ),
     ),
    );
  }
}

//centerSlice Property
//关联问题:
//https://github.com/flutter/flutter/issues/16098
class centerSlice_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/9_patch_scaled_320x190.jpeg"),
              centerSlice: new Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
              fit: BoxFit.fill,
          )
        ),
        child: Container(
          //color: Colors.yellow,

          //width: 110.0,
          //height: 110.0,
          width: 350.0,
          height: 450.0,
        ),
      ),
    );
  }
}

//ColorFilter Property
class ColorFilter_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Colors.white,
        color: Colors.grey,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage("images/JL-Logo-empty.png"),
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.src)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.clear)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.color)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.colorBurn)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.colorDodge)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.darken)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.difference)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.dst)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.dstATop)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.dstIn)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.dstOut)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.dstOver)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.exclusion)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.hardLight)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.hue)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.lighten)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.luminosity)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.modulate)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.multiply)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.overlay)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.plus)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.saturation)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.screen)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.softLight)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.srcATop)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.srcIn)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.srcOut)
                //colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.srcOver)
                colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.xor)
            ),
          ),
        ),
      ),
    );
  }
}

//fit Property
class fit_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                //image: NetworkImage("http://jlouage.com/images/author.jpg"),
                image: AssetImage("images/loginBg.png"),//大图片
                //image: AssetImage("images/happy.png"),//小图片
                //image: AssetImage("images/fitHeight.png"),
                //image: AssetImage("images/fitWidth.png"),

                //fit: BoxFit.contain
                //fit: BoxFit.cover
                //fit: BoxFit.fill
                //fit: BoxFit.fitHeight
                //fit: BoxFit.fitWidth
                //fit: BoxFit.none
                fit: BoxFit.scaleDown
            )
          ),
        ),
      ),
    );
  }
}

//repeat Property
class repeat_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/JL-Logo-150.png"),
                //repeat: ImageRepeat.noRepeat,
                //repeat: ImageRepeat.repeat,
                //repeat: ImageRepeat.repeatX,
                repeat: ImageRepeat.repeatY
              )
          ),
        ),
      ),
    );
  }
}

//matchTextDirection Property
//配合Directionality
class matchTextDirection_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/icon1.png"),
                  matchTextDirection: true,
                )
              ),
            )
        ),
      ),
    );
  }
}

//Border Property
//Border.all
class Border_All_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 5.0,
              style: BorderStyle.solid
            ),
            image: DecorationImage(
               image:AssetImage("images/JL-Logo-150.png")
             )    
          ),
        ),
      ),
    );
  }
}

//Border Property
//Border
class Border_Border_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.green,
                width: 5.0,
                style: BorderStyle.solid
              )
            ),
            image: DecorationImage(
                image:AssetImage("images/JL-Logo-150.png")
            )
          ),
        ),
      ),
    );
  }
}

//Border Property
//BorderDirectional
class Border_BorderDirectional_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            border: BorderDirectional(
              top: BorderSide(
                color: Colors.green,
                width: 5.0,
                style: BorderStyle.solid
              ),
              start: BorderSide(
                color: Colors.green,
                width: 5.0,
                style: BorderStyle.solid
              )
            ),
            image: DecorationImage(
              image:AssetImage("images/JL-Logo-150.png")
            )    
          ),
        ),
      ),
    );
  }
}

//borderRadius Property
//BorderRadius.circular
class borderRadius_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 5.0,
              style: BorderStyle.solid
            ),
            //borderRadius:BorderRadius.all(Radius.circular(20.0)),
            borderRadius:BorderRadius.circular(20.0),
            image: DecorationImage(
                image:AssetImage("images/JL-Logo-150.png")
            )
          ),
        ),
      ),
    );
  }
}

//borderRadius Property
//BorderRadius.horizontal
class BorderRadius_horizontal_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 5.0,
              style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20.0),
              //right: new Radius.circular(20.0),
            ),
            image: DecorationImage(
                image: AssetImage("images/JL-Logo-150.png")
            )
          ),
        ),
      ),
    );
  }
}

//borderRadius Property
//BorderRadius.vertical
class BorderRadius_vertical_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 5.0,
              style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
              //bottom: new Radius.circular(20.0),
            ),
            image: DecorationImage(
                image: AssetImage("images/JL-Logo-150.png"),
            )  
          ),
        ),
      ),
    );
  }
}

//borderRadius Property
//BorderRadius.only
class BorderRadius_only_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 5.0,
              style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              //topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
              //bottomLeft: Radius.circular(20.0),
            ),
            image: DecorationImage(
                image:AssetImage("images/JL-Logo-150.png")
            )  
          ),
        ),
      ),
    );
  }
}

//borderRadius Property
//Radius.elliptical
class Radius_elliptical_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 5.0,
                style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.only(
                 topLeft: Radius.elliptical(40.0, 10.0),
                 //topRight: Radius.circular(20.0),
                 bottomRight: Radius.circular(20.0),
                 //bottomLeft: Radius.circular(20.0),
              ),
              image: DecorationImage(
                  image:AssetImage("images/JL-Logo-150.png")
              )
            ),
          ),
        ),
    );
  }
}

//boxShadow Property
//color和offset
class boxShadow_colorAndoffset_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.green,
              width: 5.0,
              style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(40.0, 10.0),
              bottomLeft: Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(20.0, 10.0)
              )
            ],
            image: DecorationImage(
                image:AssetImage("images/JL-Logo-150.png")
            )
          ),
        ),
      ),
    );
  }
}

//boxShadow Property
//blurRadius
class boxShadow_blurRadius_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.green,
              width: 5.0,
              style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(40.0, 10.0),
              bottomLeft: Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(20.0, 10.0),
                blurRadius: 20.0,
              )
            ],
            image: DecorationImage(
                image: AssetImage("images/JL-Logo-150.png")
            )
          ),
        ),
      ),
    );
  }
}

//boxShadow Property
//spreadRadius
class boxShadow_spreadRadius_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.green,
              width: 5.0,
              style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(40.0, 10.0),
              bottomLeft: Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(20.0, 10.0),
                blurRadius: 20.0,
                spreadRadius: 40.0,
              )
            ],
            image: DecorationImage(
                image:AssetImage("images/JL-Logo-150.png")
            )
          ),
        ),
      ),
    );
  }
}

//boxShadow Property
//multiple BoxShadow
class boxShadow_multipleAndBoxShadow_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.green,
                  width: 5.0,
                  style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(40.0, 10.0),
                bottomLeft: Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(20.0, 10.0),
                  blurRadius: 20.0,
                  spreadRadius: 40.0,
                ),
                BoxShadow(
                  color: Colors.yellow,
                  offset: Offset(20.0, 10.0),
                  blurRadius: 20.0,
                  spreadRadius: 20.0,
                ),
                BoxShadow(
                  color: Colors.green,
                  offset: Offset(10.0, 5.0),
                  blurRadius: 20.0,
                  spreadRadius: 5.0,
                )
              ],
              image: DecorationImage(
                  image:AssetImage("images/JL-Logo-150.png")
              )
          ),
        ),
      ),
    );
  }
}

//shape Property
class shape_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.green,
              width: 5.0,
              style: BorderStyle.solid
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(20.0, 10.0),
                blurRadius: 20.0,
                spreadRadius: 40.0
              )
            ],
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage("images/JL-Logo-150.png")
            )
          ),
        ),
      ),
    );
  }
}
