import 'package:flutter/material.dart';
import 'package:movie_finder/DataLayer/Movie.dart';

Widget TxtField() {

  Movie.name = TextEditingController();

  return Container(
    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
    child: TextFormField(
      controller: Movie.name,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter Movie Name',
        prefixIcon: Icon(
          Icons.movie_filter,
          size: 40.0,
        ),
      ),
      textAlign: TextAlign.center,
    ),
  );
}