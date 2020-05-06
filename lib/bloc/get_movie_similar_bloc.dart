import 'package:flutter/material.dart';
import 'package:movie_finder/models/movie_response.dart';
import 'package:movie_finder/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class SimilarMovieBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<MovieResponse> _subject = BehaviorSubject<MovieResponse>();

  getSimilerMovies(int id) async {
    MovieResponse response = await _repository.getSimilarMovies(id);
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

  BehaviorSubject<MovieResponse> get subject => _subject;
}

final similarMovieBloc = SimilarMovieBloc();