class UserModel{

  String name;
  String genre;
  int value;

  UserModel({this.name, this.genre, this.value});

  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'genre': genre,
      'value': value
    };
  }

  UserModel fromMap(Map json) =>
      UserModel(name: json['name'], genre: json['genre'], value: json['value']);
}