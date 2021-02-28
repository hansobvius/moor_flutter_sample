class UserModel{

  String name;
  String genre;
  int value;

  UserModel({this.name, this.genre, this.value});

  Map<String, dynamic> toJson(){
    return {
      'name': name,
      'genre': genre,
      'value': value
    };
  }

  UserModel fromJson(Map json) =>
      UserModel(name: json['name'], genre: json['genre'], value: json['value']);
}