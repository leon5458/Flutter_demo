import 'package:flutter/material.dart';
import 'package:flutter_app/widget/CheckboxViewShow.dart';
import 'package:flutter_app/widget/GridViewShow.dart';
import 'package:flutter_app/widget/LayoutViewShow.dart';
import 'package:flutter_app/widget/LayoutViewShow1.dart';
import 'package:flutter_app/widget/LinkViewShow.dart';
import 'package:flutter_app/widget/ListViewShow.dart';
import 'package:flutter_app/widget/PopViewShow.dart';
import 'package:flutter_app/widget/PopViewShow1.dart';
import 'package:flutter_app/widget/RaisedButtonView.dart';
import 'package:flutter_app/widget/TextFieldViewShow.dart';
import 'package:flutter_app/widget/TextViewShow.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Page();
  }
}

class Page extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
//    布局按钮
//    return new RaisedButton(
//       child: new Text('show'),
//       onPressed: (){
//         Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('hello flutter')));
//      },
//
//    );


//  布局scrollview
//  return new CustomScrollView(
//    shrinkWrap: true,
//      slivers: <Widget>[
//        new SliverPadding(padding: const EdgeInsets.all(20.0),
//          sliver: new SliverList(delegate: new SliverChildListDelegate(
//            <Widget>[
//              const Text('RaisedButton 按钮'),
//
//              const Text('Text'),
//              const Text('C'),
//              const Text('D'),
//            ],
//          ),
//          ),
//        ),
//      ],
//  );

    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //对齐方式：平均间隔
        children: <Widget>[
          new GestureDetector(
            child: new Text("点击打印log"),
              onTap:(){
                print("11111111111111111111111111111");
              }
          ),
          new GestureDetector(
            child: new Text("layout"),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new LayoutViewShow()),);
            },
          ),
          new GestureDetector(
            child: new Text("按钮事件"),
            onTap: (){
               Navigator.push(context, new MaterialPageRoute(builder: (context)=>new RaisedButtonView()),);
            },
          ),
          new GestureDetector(
            child: new Text("text"),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new TextViewShow()),);
            },
          ),
          new GestureDetector(
            child: new Text("checkbox"),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new CheckboxViewShow()),);
            },
          ),
          new GestureDetector(
            child: new Text("输入框组件TextField"),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new TextFieldViewShow()),);
            },
          ),
          new GestureDetector(
            child: new Text("ListView"),
            onTap: (){
             Navigator.push(context, new MaterialPageRoute(builder: (context)=>new ListViewShow()),);
            },
          ),
          new GestureDetector(
            child: new Text("GridView"),
            onTap:(){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new GridViewShow()),);
            },
          ),
          new GestureDetector(
            child: new Text("弹框"),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new PopViewShow()),);
            },
          ),

          new GestureDetector(
            child: new Text("弹框1"),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new PopViewShow1()),);
            },
          ),
          new GestureDetector(
            child: new Text("布局"),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new LayoutViewShow1()),);
            },
          ),

          new GestureDetector(
            child: new Text("打开连接"),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new LinkViewShow()),);
            },
          ),

        ],
      ),
    );
//
//   return new Scaffold(
//     body: new Center(
//       child: new RaisedButton(
//         child: new Text('111111'),
//         onPressed: (){
//
//         },
//
//       ),
//
//     ),
//   );

  }
}




