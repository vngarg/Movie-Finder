import 'package:movie_finder/models/movie_response.dart';
import 'package:movie_finder/models/perosn_response.dart';
import 'package:movie_finder/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class PersonsListBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<PersonResponse> _subject = BehaviorSubject<PersonResponse>();

  getMovies() async {
    PersonResponse response = await _repository.getPersons();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<PersonResponse> get subject => _subject;
}

final moviesBloc = PersonsListBloc();