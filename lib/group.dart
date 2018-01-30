import 'package:flutter/material.dart';
import 'package:juntada_flutter/model/Event.dart';
import 'package:juntada_flutter/widgets/event_item.dart';

class GroupPage extends StatefulWidget {

  @override
  _GroupPageState createState() => new _GroupPageState();
}

enum AppBarBehavior { normal, pinned, floating, snapping }


class _GroupPageState extends State<GroupPage> {

  final double _appBarHeight = 200.0;
  AppBarBehavior _appBarBehavior = AppBarBehavior.pinned;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My Group'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.person_add), onPressed: null)
        ],
      ),
        body: new DefaultTabController(
          length: 10,
          child: new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 12.0,right: 0.0,bottom: 12.0),
                  child: new Text('Members', style: new TextStyle(fontSize: 16.0),),
                ),
                new Container(
                  height: 60.0,
                    child:
                      new ListView(
                        scrollDirection: Axis.horizontal,
                        children: _getMembers()
                      ),
                ),
                new Center(
                  child: new TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    tabs: <Widget>[
                      new Tab(
                        text: "JUNTADAS",
                      ),
                      new Tab(
                        text: "ENCUESTAS"
                      )
                    ]
                  ),
                ),
                new Container(
                  child: new TabBarView(
                    children: <Widget>[
                      _getEvents(),
                      _getEvents()
                    ],
                  ),
                  height: 345.0,
                )
              ],
            )
         )
        )
    );
  }

  _getMembers() {
    List<Widget> groups = [];
    for (int i = 1; i <= 12; i++) {
      groups.add(new Container(
          margin: const EdgeInsets.only(right: 3.0),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.fitHeight,
                alignment: FractionalOffset.topCenter,
                image: new AssetImage(
                    'images/groups/sample' + (i % 4 + 1).toString() + '.jpg'),
              )),
        ),
      );
    }
    return groups;
  }

  getGroupMembers() {
    var _members = [];
    for (int i = 1; i <= 4; i++) {
      _members.add(
          new Image.asset('images/groups/sample' + i.toString() + '.jpg'));
    }
    return _members;
  }

  _getEvents() {
    var result = [];
    result.add(new EventItem(event: new Event("Test1")));
    result.add(new EventItem(event: new Event("Test2")));
    result.add(new EventItem(event: new Event("Test3")));
    result.add(new EventItem(event: new Event("Test4")));
    result.add(new EventItem(event: new Event("Test5")));
    result.add(new EventItem(event: new Event("Test2")));
    result.add(new EventItem(event: new Event("Test3")));
    result.add(new EventItem(event: new Event("Test4")));
    result.add(new EventItem(event: new Event("Test5")));
    result.add(new EventItem(event: new Event("Test2")));
    result.add(new EventItem(event: new Event("Test3")));
    result.add(new EventItem(event: new Event("Test4")));
    result.add(new EventItem(event: new Event("Test5")));
    result.add(new EventItem(event: new Event("Test2")));
    return new ListView(
      scrollDirection: Axis.vertical,
      children: result,
    );
  }

  _getPolls() {}
}