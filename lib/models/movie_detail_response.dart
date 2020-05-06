import 'package:movie_finder/models/movie_details.dart';

class MovieDetailResponse {
  final MovieDetail movieDetail;
  final String error;

  MovieDetailResponse(
    this.error ,
    this.movieDetail
  )  ;

  MovieDetailResponse.fromJson(Map<String , dynamic> json ):
  movieDetail = MovieDetail.fromJson(json),
  error = "";

  MovieDetailResponse.withError(String errorValue) :
  movieDetail = MovieDetail(null, null, null, null, "", null),
  error = errorValue;
}