
import 'package:flutter/material.dart';

class TextFieldViewShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("TextField"),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        width: 500,
        height: 200,

        child: new TextField(
          decoration: new InputDecoration(
            hintText: "请输入想要填写的信息"
          ),
        ),
      ),

    );
  }


}