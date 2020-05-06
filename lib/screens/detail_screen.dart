import 'package:flutter/material.dart';
import 'package:movie_finder/models/movie.dart';
import 'package:movie_finder/style/theme.dart' as Style;
import 'package:sliver_fab/sliver_fab.dart';

class MovieDetailScreen extends StatefulWidget {

  final Movie movie;
  MovieDetailScreen({
    Key key , @required this.movie
  }) : super(key: key);

  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState(movie);
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {

  final Movie movie;
  _MovieDetailScreenState(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      body: Builder(
        builder: (context) {
          return SliverFab(
            floatingPosition: FloatingPosition(right: 20.0),
            floatingWidget: ,
          )
        },
      ),
    );
  }
}
