import 'company_department_model.dart';

class Company{

  int id;
  String name;
  List<CompanyDepartment> company_department;

  Company({this.id, this.name, this.company_department});

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    id: json['id'],
    name: json['name'],
    company_department: (json["company_department"] as List)?.map((element) => element == null
      ? null
      : CompanyDepartment.fromJson(element as Map<String, dynamic>)
    )?.toList()
  );
}



