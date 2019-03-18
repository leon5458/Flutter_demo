import 'package:flutter/material.dart';

class CheckboxViewShow extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LearnCheckBox();
  }
}
class _LearnCheckBox extends State<CheckboxViewShow>{
  bool isCheck=false;
  List<bool> isChecks=[false,false];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('checkbox'),
        backgroundColor: Color(0xFF00d8a0)
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Center(
            child: new Checkbox(value: isCheck,
                activeColor: Colors.red,
                onChanged:(bo){
                  setState(() {
                    isCheck=bo;
                  });
                } ),
          ),
          new Center(
            child: new CheckboxListTile(value: isCheck,
                title:new Text("小夏"),
                controlAffinity: ListTileControlAffinity.platform,//控制亲和度  leading按钮显示在文字前面  trailing按钮显示在文字的后面   platform显示样式根据手机当前平台默认显示
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),

          new Center(
            child: new CheckboxListTile(value: isCheck,
                title:new Text("小夏"),
                controlAffinity: ListTileControlAffinity.platform,//控制亲和度  leading按钮显示在文字前面  trailing按钮显示在文字的后面   platform显示样式根据手机当前平台默认显示
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(value: isCheck,
                title:new Text("小夏"),
                controlAffinity: ListTileControlAffinity.platform,//控制亲和度  leading按钮显示在文字前面  trailing按钮显示在文字的后面   platform显示样式根据手机当前平台默认显示
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(value: isCheck,
                title:new Text("小夏"),
                controlAffinity: ListTileControlAffinity.platform,//控制亲和度  leading按钮显示在文字前面  trailing按钮显示在文字的后面   platform显示样式根据手机当前平台默认显示
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(value: isCheck,
                title:new Text("小夏"),
                controlAffinity: ListTileControlAffinity.platform,//控制亲和度  leading按钮显示在文字前面  trailing按钮显示在文字的后面   platform显示样式根据手机当前平台默认显示
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(value: isCheck,
                title:new Text("小夏"),
                controlAffinity: ListTileControlAffinity.platform,//控制亲和度  leading按钮显示在文字前面  trailing按钮显示在文字的后面   platform显示样式根据手机当前平台默认显示
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(value: isCheck,
                title:new Text("小夏"),
                controlAffinity: ListTileControlAffinity.platform,//控制亲和度  leading按钮显示在文字前面  trailing按钮显示在文字的后面   platform显示样式根据手机当前平台默认显示
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
        ],
      ),
    );
  }
}