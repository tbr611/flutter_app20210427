import 'package:flutter/material.dart';

class AddFriendPage1 extends StatefulWidget {
  final Map arguments;

  AddFriendPage1({Key key, this.arguments}) : super(key: key);

  _AddFriendPage1State createState() =>
      _AddFriendPage1State(arguments: this.arguments);
}

class _AddFriendPage1State extends State<AddFriendPage1> {
  Map arguments;

  _AddFriendPage1State({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('添加朋友'),
      ),
      body: Container(
        child: Column(
          children: [
            Text("传过来的值为：${arguments["pid2"]}"),
            MaterialButton(
              color: Colors.red,
              child: Text("跳转到地址页"),
              onPressed: () {
                setState(() {
                  // Navigator.pushNamed(context, "/address",arguments: {
                  //   "add":"这是地址"
                  Navigator.pushNamed(context, "/phone",
                      arguments: {"haha": "这是我新买的电话"});
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
