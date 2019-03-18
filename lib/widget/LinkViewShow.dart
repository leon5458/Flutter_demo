import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class LinkViewShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("布局"),
          backgroundColor: Colors.amber,
        ),
          body: new LinkView()
      ),

    );
  }
}
class LinkView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LinkViewState ();
  }
}

class LinkViewState extends State<LinkView>{
  @override
  Widget build(BuildContext context) {

    return new Column(
      children: <Widget>[
        RaisedButton(
          child: Text("打开连接"),
          onPressed: _launchURL,
        ),

        RaisedButton(
          child: Text("拨打电话"),
          onPressed: _launchPhone,
        )
      ],


    );
  }
}

 _launchPhone() async {
   const url = 'tel:17601290637';
   if (await canLaunch(url)) {
     await launch(url);
   } else {
     throw 'Could not launch $url';
   }
}
_launchURL() async{
  const url = 'https://github.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
