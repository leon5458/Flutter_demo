import 'package:flutter/material.dart';
class PopViewShow1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>
      _DialogDemo();
}

class _DialogDemo extends State<PopViewShow1>{
  _generateSimpleDialog() {
    return SimpleDialog(
      title: Text('simple dialog title'),
      children: <Widget>[
        Container(
          height: 100,
          child: Text('这里填写内容'),
        ),
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

  _generateAlertDialog() {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('show simple dialog'),
          onPressed: () => showDialog(
              context: context, builder: (_) => _generateSimpleDialog()),
        ),
        RaisedButton(
          child: Text('show alert dialog'),
          onPressed: () => showDialog(
              context: context, builder: (_) => _generateAlertDialog()),
        ),

        RaisedButton(
            child: Text('show general dialog'),
            onPressed: () => showGeneralDialog(
              context: context,
              pageBuilder: (context, a, b) => _generateAlertDialog(),
              barrierDismissible: false,
              barrierLabel: 'barrierLabel',
              transitionDuration: Duration(milliseconds: 400),
            )),
      ],
    );
  }
}
