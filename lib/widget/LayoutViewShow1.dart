import 'package:flutter/material.dart';
class LayoutViewShow1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home : new Scaffold(
        appBar: AppBar(
          title: new Text("布局"),
          backgroundColor: Colors.amber,
        ),
        body: new Layout1View(),
      )
    );
  }

}

class Layout1View extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new LayoutViewState1();
  }
}

class LayoutViewState1 extends State<Layout1View>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize:MainAxisSize.max ,
      children: <Widget>[
        Container(
        margin:EdgeInsets.only(left: 50,) ,
        child: RaisedButton(
            child: Text("为了代码精进"),
            disabledTextColor: Colors.red,
            textColor: Colors.yellow,
            color: Colors.green,
            textTheme: ButtonTextTheme.accent,
            padding: EdgeInsets.fromLTRB(10,20,30,40),
            onPressed: (){
            },

          ),

        ),

        RaisedButton(
          child: Text("为了代码精进"),
        ),
        new GestureDetector(
          child: Text("啊啊啊啊啊啊啊啊啊啊啊啊啊啊",style: new TextStyle(
                color: Colors.blue
            ),
          ) ,
          onTap: (){
              print("11111111111111111111111111111");
        },
//        child: Text("啊啊啊啊啊啊啊啊啊啊啊啊啊啊",
//          style: new TextStyle(
//              color: Colors.blue
//          ),
//        ) ,
        )

      ],
    );
  }
}
