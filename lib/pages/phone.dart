import 'package:flutter/material.dart';
class Phone extends StatefulWidget {
  final Map arguments;

  const Phone({Key key, this.arguments}) : super(key: key);
  @override
  _PhoneState createState() => _PhoneState(arguments:this.arguments);
}

class _PhoneState extends State<Phone> {
  Map arguments;
  _PhoneState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这是电话页面"),
      ),
      body: Column(
        children: [
          FlutterLogo(),
          Text("哈哈${arguments["haha"]}"),
          MaterialButton(
            child: Text("返回首页"),
            color: Colors.red,
            onPressed: (){
              setState(() {
                Navigator.pushNamed(context, "/");
              });
            },
          )
        ],
      ),
    );
  }
}
