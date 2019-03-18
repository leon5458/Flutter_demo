import 'package:flutter/material.dart';
class GridViewShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: AppBar(
            title: new Text("GridView"),
            backgroundColor: Colors.amber,
          ),
          body: new GridViewPage(),
        ),
    );
  }
}
class GridViewPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>GridViewState();  
}

class GridViewState extends State{
  @override
  Widget build(BuildContext context) =>new GridView.count(
      primary: false,
      padding: const EdgeInsets.all(8.0),
      mainAxisSpacing: 8.0,//竖向间距
      crossAxisCount: 2,//横向Item的个数
      crossAxisSpacing: 8.0,//横向间距
      children: buildGridTileList(20));

  List<Widget> buildGridTileList(int number){
    List<Widget> widgetList = new List();
    for(int i=0;i<number;i++){
      widgetList.add(getItemWidget());
    }
    return widgetList;
  }
  String url =
      "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=495625508,"
      "3408544765&fm=27&gp=0.jpg";
  Widget getItemWidget() {
    //BoxFit 可设置展示图片时 的填充方式
    return new Image(image: new NetworkImage(url), fit: BoxFit.cover);
  }

}