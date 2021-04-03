class CompanyEmployee{

  int id;
  String name;

  CompanyEmployee({this.id, this.name});

  factory CompanyEmployee.fromJson(Map<String, dynamic> json) => CompanyEmployee(
    id: json['id'],
    name: json['name']
  );
}