class Video {
  final String id , key , name , site , type;

  Video(
    this.name,
    this.id,
    this.key,
    this.site,
    this.type
  );

  Video.fromJson(Map< String , dynamic> json):
  id = json['id'],
  name = json['name'],
  key = json['key'],
  site = json['site'],
  type = json['type'];
}