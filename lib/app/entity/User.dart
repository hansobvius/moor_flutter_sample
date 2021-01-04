class User{

  String name;
  int value;

  User({this.name, this.value});

  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'value': value
    };
  }

  User fromMap(Map json) =>
      User(name: json['name'], value: json['value']);
}