import 'package:movie_finder/models/person.dart'; 

class PersonResponse {
  final List<Person> persons;
  final String error;

  PersonResponse(
    this.error, this.persons
  );

  PersonResponse.fromJson(Map<String , dynamic> json) : persons = (json['results'] as List).map((i) => Person.fromJson(i)).toList(),
  error = "";

  PersonResponse.withError(String errorValue): 
  persons = List(),
  error = errorValue;  
}