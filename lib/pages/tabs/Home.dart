import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MaterialButton(
            child: Text("跳转到搜索页面"),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/search',
                  arguments: {"id": "搜索一下你就知道"});
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),
        SizedBox(height: 20),
        MaterialButton(
            child: Text("跳转到商品页面"),
            color: Colors.red,
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            }),
        SizedBox(height: 20),
        MaterialButton(
            color: Colors.orange,
            child: Text("跳转到添加朋友页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/addfriend',
                  arguments: {"pid2": "我们是好朋友"});
            }),
      ],
    );
  }
}
