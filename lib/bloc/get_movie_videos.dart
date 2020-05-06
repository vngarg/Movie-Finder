import 'package:flutter/material.dart';
import 'package:movie_finder/models/cast_response.dart';
import 'package:movie_finder/models/video_response.dart';
import 'package:movie_finder/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class MovieVideosBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<VideoResponse> _subject = BehaviorSubject<VideoResponse>();

  getCasts(int id) async {
    VideoResponse response = await _repository.getMovieVideos(id);
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

  BehaviorSubject<VideoResponse> get subject => _subject;
}

final movieVideosBloc = MovieVideosBloc();