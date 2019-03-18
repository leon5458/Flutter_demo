import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ListViewShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("listview"),
          backgroundColor: Colors.amber,),
        body: new ListViewPage(),
      ),
    );
  }
}
class ListViewPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>new ListSate();
}
class ListSate extends State{
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemCount: 20,itemBuilder: buildItem);
  }

  Widget buildItem(BuildContext context, int index){
    //设置分割线
    if (index.isOdd) return new Divider();
    //设置字体样式
    TextStyle textStyle =
    new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0);
    //设置Padding
    return new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Text("leon", style: textStyle));
  }
}

