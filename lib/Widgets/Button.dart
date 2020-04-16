import 'package:flutter/material.dart';
import 'package:movie_finder/DataLayer/Movie.dart';

Widget Buttons() {
  return Container(
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: RaisedButton(
      child: Text('Search' , style: TextStyle( fontSize: 19.0 ),),
      onPressed: () {
        print(Movie.name.text);
      },
    ),
  );
}
