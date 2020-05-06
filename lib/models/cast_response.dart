import 'package:movie_finder/models/cast.dart';

class CastResponse {
  final List<Cast> casts;
  final String error;

  CastResponse(
    this.error,
    this.casts
  );
  
  CastResponse.fromJson(Map<String , dynamic> json):
  casts = (json['casts'] as List).map((i) => Cast.fromJson(i)).toList(),
  error = "";

  CastResponse.withError(String errorValue) :
  casts = List(),
  error = errorValue;
}