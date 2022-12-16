class UserModel{

  String name;
  String genre;
  String lastName;
  int value;

  UserModel({this.name, this.lastName, this.genre, this.value});

  Map<String, dynamic> toJson(){
    return {
      'name': name,
      'lastName': lastName,
      'genre': genre,
      'value': value
    };
  }

  UserModel fromJson(Map json) =>
      UserModel(name: json['name'], lastName: json['lastName'], genre: json['genre'], value: json['value']);
}