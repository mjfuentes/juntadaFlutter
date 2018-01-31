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
        floatingActionButton: new FloatingActionButton(
            elevation: 5.0,
            child: new Icon(Icons.add),
            backgroundColor: new Color(0xFF00BFA5),
            onPressed: () {}),
        appBar: new AppBar(
          backgroundColor: new Color(0xFF00BFA5),
          title: new Text('My Group'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.person_add), onPressed: null)
          ],
        ),
        body: new DefaultTabController(
            length: 10,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
//                new Padding(
//                  padding: const EdgeInsets.only(
//                      left: 8.0, top: 8.0, right: 0.0, bottom: 8.0),
//                  child: new Text(
//                    'Members',
//                    style: new TextStyle(fontSize: 16.0),
//                  ),
//                ),
                new Container(
                  height: 80.0,
                  margin: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                  child: new ListView(
                      padding: const EdgeInsets.only(right: 8.0),
                      scrollDirection: Axis.horizontal,
                      children: _getMembers()),
                ),
                new Container(
                  color: new Color(0xFF00BFA5),
                  width: 500.0,
                  alignment: Alignment.center,
                  child: new TabBar(
                        labelColor: Colors.white,
                        indicatorColor: Colors.white,
                        unselectedLabelColor: Colors.white30,
                        isScrollable: true,
                        tabs: <Widget>[
                          new Tab(
                            text: "JUNTADAS",
                          ),
                          new Tab(text: "ENCUESTAS")
                        ]),
                ),
                new Expanded(
                    child: new Container(
                  child: new Stack(
                    children: <Widget>[
                      new Container(
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                              fit: BoxFit.fitWidth,
                              alignment: FractionalOffset.topCenter,
                              image: new AssetImage('images/background.jpg')),
                        ),
                      ),
                      new Container(
                        child: new TabBarView(
                          children: <Widget>[_getEvents(), _getEvents()],
                        ),
                      )
                    ],
                  ),
                  height: 345.0,
                ))
              ],
            )));
  }

  _getMembers() {
    List<Widget> groups = [];
    for (int i = 1; i <= 12; i++) {
      groups.add(
        new Card(
          elevation: 3.0,
          child: new Container(
            height: 10.0,
            width: 50.0,
            decoration: new BoxDecoration(
                image: new DecorationImage(
              fit: BoxFit.cover,
              alignment: FractionalOffset.topCenter,
              image: new AssetImage(
                  'images/groups/sample' + (i % 4 + 1).toString() + '.jpg'),
            )),
          ),
        ),
      );
    }
    return groups;
  }

  getGroupMembers() {
    var _members = [];
    for (int i = 1; i <= 4; i++) {
      _members
          .add(new Image.asset('images/groups/sample' + i.toString() + '.jpg'));
    }
    return _members;
  }

  _getEvents() {
    var result = [];
    result.add(new EventItem(
        event: new Event(
            "Test Event 1", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 2", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 3", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 4", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 5", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 6", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 7", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 8", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 9", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 10", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 11", "10/10/2017", "15:00", "La Plata, Buenos Aires")));
    result.add(new EventItem(
        event: new Event(
            "Test Event 12", "10/10/2017", "15:00", "La Plata, Buenos Aires")));

    return new ListView(
      scrollDirection: Axis.vertical,
      children: result,
    );
  }

  _getPolls() {}
}
