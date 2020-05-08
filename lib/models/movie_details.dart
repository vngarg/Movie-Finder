import 'package:movie_finder/models/genre.dart';

class MovieDetail {
  final int id , budget;
  final bool adult;
  final List<Genre> genres;
  final String releaseDate;
  final int runTime;

  MovieDetail(
    this.genres,
    this.id,
    this.adult,
    this.budget,
    this.releaseDate,
    this.runTime
  );

  MovieDetail.fromJson(Map<String , dynamic> json):
  id = json['id'],
  adult = json['adult'],
  budget = json['budget'],
  genres = (json['genres'] as List).map((i) => Genre.fromJson(i)).toList(),
  releaseDate = json['release_date'],
  runTime = json['runtime'];
}