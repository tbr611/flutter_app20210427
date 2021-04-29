import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  final Map arguments;

  const Address({Key key, this.arguments}) : super(key: key);

  @override
  _AddressState createState() => _AddressState(arguments:this.arguments);
}

class _AddressState extends State<Address> {
  Map arguments;

  _AddressState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("地址"),
      ),
      body: Text("传过来的值：${arguments["add"]}"),
    );
  }
}
