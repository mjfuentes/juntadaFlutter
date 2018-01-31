import 'package:flutter/material.dart';
import 'package:juntada_flutter/widgets/group_item.dart';

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
           new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: FractionalOffset.topCenter,
                image: new AssetImage('images/background.jpg')
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new GridView.count(
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 1.1,
              children: _getGroups(),
              crossAxisCount: 2,
            )
          )
        ]),
        floatingActionButton: new FloatingActionButton(
            elevation: 5.0,
            child: new Icon(Icons.add),
            backgroundColor: new Color(0xFF00BFA5),
            onPressed: () {}));
  }

  _getGroups() {
    List<Widget> groups = [];
    for (int i = 1; i <= 15; i++) {
      groups.add(new GroupItem());
    }
    return groups;
  }
}
