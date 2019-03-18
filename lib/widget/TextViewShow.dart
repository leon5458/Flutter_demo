import 'package:flutter/material.dart';

class TextViewShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("text显示"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        width: 500,
        height: 500,
        color: Colors.greenAccent,
        child: new Text('我在学习flutter',
          textAlign: TextAlign.center,
        style: new TextStyle(
          color: Colors.amber,
          fontSize: 25,
        ),),
      ),
    );
    
  }

}