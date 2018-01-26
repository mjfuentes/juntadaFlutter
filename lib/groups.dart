import 'package:flutter/material.dart';

class GroupsPage extends StatefulWidget {
  GroupsPage({Key key}) : super(key: key);

  @override
  _GroupsPageState createState() => new _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text('Juntada'),
            backgroundColor: new Color(0xFF00BFA5),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.notifications),
                onPressed: null,
              )
            ]),
        drawer: new Drawer(),
        body: new Stack(children: <Widget>[
          new Positioned.fill(child: new Image.asset('images/background.jpg'),),
          new GridView.count(
            children: _getGroups(),
            crossAxisCount: 2,
          )
        ]),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.add),
            backgroundColor: new Color(0xFF00BFA5),
            onPressed: () {}));
  }

  _getGroups() {
    List<Widget> groups = [];
    for (int i = 1; i <= 15; i++) {
      groups.add(new Container(
          color: Colors.white,
          margin: const EdgeInsets.all(5.0),
          child: new GestureDetector(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new AspectRatio(
                  aspectRatio: 1.3,
                  child: new Container(
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.topCenter,
                      image: new NetworkImage(
                          'https://i.stack.imgur.com/lkd0a.png'),
                    )),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'Sample group ' + i.toString(),
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
            onTap: () {
              print('row tapped');
            },
          )));
    }
    return groups;
  }
}
