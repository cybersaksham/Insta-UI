import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Instagram',
      theme: CupertinoThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.light,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Instagram"),
        leading: Icon(CupertinoIcons.plus_square),
        trailing: Icon(CupertinoIcons.chat_bubble_text),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.add)),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline)),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded)),
          ],
        ),
        tabBuilder: (BuildContext context, index) {
          return Home();
        },
      ),
    );
  }
}
