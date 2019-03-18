import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
class RaisedButtonView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: new AppBar(
       title: new Text("flutter按钮"),
       backgroundColor: Colors.grey,
     ),
      body: new Center(
        child: new RaisedButton(onPressed:(){
          Fluttertoast.instance.showToast(
              msg: "This is Center Short Toast",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIos: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white
          );

        },
            child:new Text("我是按钮")
        ),
      ),
    );
  }

}