import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("默认首页"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
                //height: 10.0,
                ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: DrawerHeader(
                        child: Text("你好Flutter"),
                        decoration: BoxDecoration(
                            //color: Colors.yellow,
                            image: DecorationImage(
                          image: NetworkImage(
                              "https://www.itying.com/images/flutter/2.png"),
                          fit: BoxFit.cover,
                        )),
                      ),
                    )
                  ],
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("用户设置"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.assistant_navigation),
              title: Text("充值付费"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("用户设置"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.assistant_navigation),
              title: Text("充值付费"),
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 60.0,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("用户设置"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.assistant_navigation),
              title: Text("充值付费"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("用户设置"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.assistant_navigation),
              title: Text("充值付费"),
            ),
            Divider(),
          ],
        ),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        //配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 36.0,
        //icon的大小
        fixedColor: Colors.red,
        //选中的颜色
        type: BottomNavigationBarType.fixed,
        //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              // ignore: deprecated_member_use
              title: Text("分类")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              // ignore: deprecated_member_use
              title: Text("设置"))
        ],
      ),
    );
  }
}
