import 'package:flutter/material.dart';

class ThingList extends StatefulWidget {
  ThingList({Key key, this.things}) : super(key: key);

  final List<String> things;
  
  @override
  _ThingList createState() => new _ThingList();
}

class _ThingList extends State<ThingList> {
  @override
  Widget build(BuildContext context) {
    print(widget.things);
    return new ListView(
      children: widget.things.map((String thing) {
        return new Text(
          thing,
          style: TextStyle(color: Colors.white, decoration: TextDecoration.none)
          );
      }).toList(),
    );
  }
}
void main() {
  runApp(new MaterialApp(
    title: 'Shopping App',
    home: new ThingList(
      things: <String>[
        'Eggs1',
        'Flour',
        'Chocolate chips',
      ],
    ),
  ));
}