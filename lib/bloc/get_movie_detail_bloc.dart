import 'package:flutter/material.dart';
import 'package:movie_finder/models/cast_response.dart';
import 'package:movie_finder/models/movie_detail_response.dart';
import 'package:movie_finder/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class MovieDetailBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<MovieDetailResponse> _subject = BehaviorSubject<MovieDetailResponse>();

  getMovieDetail(int id) async {
    MovieDetailResponse response = await _repository.getMovieDetail(id);
    _subject.sink.add(response);
  }

  void drainStream() {
    _subject.value = null;
  }

  @mustCallSuper
  void dispose() async {
    await _subject.drain();
    _subject.close();
  }

  BehaviorSubject<MovieDetailResponse> get subject => _subject;
}

final moveiDetailBloc = MovieDetailBloc();