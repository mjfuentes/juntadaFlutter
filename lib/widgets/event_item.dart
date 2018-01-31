import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:juntada_flutter/model/Event.dart';

class EventItem extends StatelessWidget {
  const EventItem({Key key, this.event}) : super(key: key);
  final Event event;

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
        child: new Card(
            elevation: 2.0,
            color: Colors.white,
            child: new Container(
                width: 100.0,
                child: new Center(
                    child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      color: new Color(0xFF00BFA5),
                      width: 500.0,
                      child: new Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text(
                          event.title,
                          style: new TextStyle(
                              fontSize: 17.0, color: Colors.white),
                        ),
                      ),
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: new Icon(
                            Icons.calendar_today,
                            color: new Color(0xFF00BFA5),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                          child: new Text(event.date, style: new TextStyle(fontSize: 15.0)),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: new Icon(
                            Icons.access_time,
                            color: new Color(0xFF00BFA5),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                          child: new Text(event.time, style: new TextStyle(fontSize: 15.0),),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: new Icon(
                            Icons.location_on,
                            color: new Color(0xFF00BFA5),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                          child: new Text(event.location, style: new TextStyle(fontSize: 15.0)),
                        ),
                      ],
                    ),
                  ],
                )))));
  }
}
