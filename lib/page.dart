import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  Widget _post() {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(radius: 15),
          title: Text("user.insta"),
          trailing: Icon(Icons.more_vert),
        ),
        Image.network(
          "https://images.unsplash.com/photo-1625777719130-0a8e07086117?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.heart),
                  SizedBox(width: 10),
                  Icon(CupertinoIcons.chat_bubble),
                  SizedBox(width: 10),
                  Icon(CupertinoIcons.paperplane),
                ],
              ),
              Icon(CupertinoIcons.bookmark),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> _stories() {
    List<Widget> l1 = [];
    for (var i = 0; i < 10; i++) {
      l1.add(
        Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Container(
                  height: 50,
                  width: 50,
                  child: Stack(
                    alignment: Alignment(0, 0),
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(),
                      ),
                      Container(
                        height: 47,
                        width: 47,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        child: CircleAvatar(),
                      ),
                      FloatingActionButton(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        onPressed: () {},
                      )
                    ],
                  )),
              Text("user"),
            ],
          ),
        ),
      );
    }
    return l1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 85,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _stories(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (ctx, i) {
                  return _post();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
