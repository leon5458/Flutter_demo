import 'package:flutter/material.dart';
class PopViewShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home:new Scaffold(
        appBar: AppBar(
          title: new Text("弹框"),
        ),
        body: new PopViewPage(),
      )
    );
  }
}

class PopViewPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PopViewState();
  }
}
class PopViewState extends State<PopViewPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
         children: <Widget>[
           new Expanded(flex: 0, child: getRaisedButton(context)),
           SizedBox(height: 10),
           new Expanded(flex: 0, child: getRaisedButton3(context)),
           SizedBox(height: 10),
           new Expanded(flex: 0, child: getRaisedButton1(context)),
           SizedBox(height: 10),
           new Expanded(flex: 0, child: getRaisedButton2(context)),
           SizedBox(height: 10),
         ],
    );
  }

  getRaisedButton(BuildContext context) {
     return RaisedButton(
       child: Text("AlertDialog"),
       onPressed: (){
         showDialog<Null>(
           context: context,
           barrierDismissible: false,
           builder: (BuildContext context) {
             return new AlertDialog(
               title: new Text('标题'),
               content: new SingleChildScrollView(
                 child: new ListBody(
                   children: <Widget>[
                     new Text('内容 1'),
                     new Text('内容 2'),
                   ],
                 ),
               ),
               actions: <Widget>[
                 new FlatButton(
                   child: new Text('确定'),
                   onPressed: () {
                     Navigator.of(context).pop();
                   },
                 ),
               ],
             );
           },
         ).then((val) {
           print(val);
         });
       },
     );
  }

  getRaisedButton3(BuildContext context) {
    return RaisedButton(
      child: Text("AlertDialog"),
      onPressed: (){
        showDialog<Null>(
            context: context,
            builder: (BuildContext context){
              return AlertDialog(
                title: Text('这是标题'),
                content: Text('这是内容'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('取消'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  FlatButton(
                    child: Text('确认'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            }
        );
      }
    );
  }
  getRaisedButton1(BuildContext context) {
    return RaisedButton(
      child: new Text('SimpleDialog'),
      onPressed: () {
        showDialog<Null>(
          context: context,
          builder: (BuildContext context) {
            return new SimpleDialog(
              title: new Text('选择'),
              children: <Widget>[
                new SimpleDialogOption(
                  child: new Text('选项 1'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                new SimpleDialogOption(
                  child: new Text('选项 2'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  getRaisedButton2(BuildContext context) {
    return  RaisedButton(
      child: new Text("SimpleDialog"),
        onPressed: (){
            showDialog<Null>(
              context: context,
              builder: (BuildContext context){
                return new SimpleDialog(
                  title: new Text("内容"),
                  children: <Widget>[
                    Container(
                      height: 100,
                      child: Text('这里填写内容'),
                    ),
                  FlatButton(
                    child: Text("取消"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                    FlatButton(
                      child: Text("确认"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );


              }
            );

            }
    );
  }




}