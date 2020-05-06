class Cast {
  final int id;
  final String character, name, img;

  Cast(this.id, this.name, this.character, this.img);

  Cast.fromJson(Map<String, dynamic> json)
      : id = json['cast_id'],
        character = json['character'],
        name = json['name'],
        img = json['profile_path'];
}
