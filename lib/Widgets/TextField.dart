import 'package:flutter/material.dart';
import 'package:movie_finder/DataLayer/Movie.dart';

Widget TxtField() {
  Movie.name = TextEditingController();

  return Container(
    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
    child: TextFormField(
      controller: Movie.name,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.white),
          hintText: "Search...",
          hintStyle: TextStyle(color: Colors.white)),
      textAlign: TextAlign.center,
    ),
  );
}
