class Genre {
  final String name;
  final int id;

  Genre( this.name , this.id);

  Genre.fromJson( Map<String , dynamic> json) : id = json['id'],
  name = json['name'];
}