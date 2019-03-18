import 'package:flutter/material.dart';

class FindPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第一个界面'),
        backgroundColor: Colors.red,
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('跳转'),
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context)=>new SecondSceen()),);
          },
        ),
      ),
    );
  }

}

class SecondSceen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第二个界面'),
        backgroundColor: Colors.amber,

      ),
      body: new Center(
        child: new RaisedButton(onPressed: (){
          Navigator.pop(context);
        },
        child: new Text('返回'),
        ),
      ),
    );
  }
}







