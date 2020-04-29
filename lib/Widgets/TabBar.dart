import 'package:flutter/material.dart';

Widget buildBarItem(IconData icon) {
  return Container(
    width: 100.0,
    margin: EdgeInsets.all(4.0),
    child: Icon(icon),
  );
}

Widget MenuBar() {
  return SizedBox(
    height: 50.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        buildBarItem(Icons.directions_car),
        buildBarItem(Icons.directions_bike),
        buildBarItem(Icons.directions_bus),
        buildBarItem(Icons.directions_run),
        buildBarItem(Icons.directions_railway),
      ],
    ),
  );
}
