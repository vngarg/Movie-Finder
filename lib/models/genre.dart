class Genre {
  final String id , name;

  Genre( this.name , this.id);

  Genre.fromJson( Map<String , dynamic> json) : id = json['id'],
  name = json['name'];
}