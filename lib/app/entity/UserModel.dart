class UserModel{

  String name;
  int value;

  UserModel({this.name, this.value});

  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'value': value
    };
  }

  UserModel fromMap(Map json) =>
      UserModel(name: json['name'], value: json['value']);
}