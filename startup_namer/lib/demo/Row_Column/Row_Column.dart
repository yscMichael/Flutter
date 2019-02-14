import 'package:flutter/material.dart';

//Row
class Row_Text_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
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