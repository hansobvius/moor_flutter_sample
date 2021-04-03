import 'company_employee_model.dart';

class CompanyDepartment{

  int id;
  String department_name;
  List<CompanyEmployee> company_employees;

  CompanyDepartment({this.id, this.department_name, this.company_employees});

  factory CompanyDepartment.fromJson(Map<String, dynamic> json) => CompanyDepartment(
    id: json['id'],
    department_name: json['department_name'],
    company_employees: (json['company_employees'] as List)?.map((element) => element == null
      ? null
      : CompanyEmployee.fromJson(element as Map<String, dynamic>)
    )?.toList()
  );
}