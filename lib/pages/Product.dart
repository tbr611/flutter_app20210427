import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('商品页面'),
      ),
       body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        

          MaterialButton(
              child: Text("跳转到商品详情"),
              onPressed: () {
                Navigator.pushNamed(context, '/productinfo',arguments: {
                  "pid":"上天猫就购了"
                });
              }
          ),      

        ],
       )
    );
  }
}