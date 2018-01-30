import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:juntada_flutter/model/Event.dart';

class EventItem extends StatelessWidget {

  const EventItem({Key key, this.event}) : super(key: key);
  final Event event;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: Colors.white,
      child: new Container(
        width: 100.0,
        child: new Center(
          child:  new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  color: new Color(0xFF00BFA5),
                  width: 500.0,
                  child: new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(event.title, style: new TextStyle(fontSize: 17.0, color: Colors.white),),
                  ),
                ),

                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Icon(
                        Icons.calendar_today,color: new Color(0xFF00BFA5),
                      ),
                    ) ,
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(event.title),
                    ),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Icon(
                        Icons.access_time,color: new Color(0xFF00BFA5),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(event.title),
                    ),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Icon(
                        Icons.location_on,color: new Color(0xFF00BFA5),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(event.title),
                    ),
                  ],
                ),
              ],
          )
        )
      )
    );
  }
}