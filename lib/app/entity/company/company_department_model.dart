import 'company_employee_model.dart';

class CompanyDepartment{

  int id;
  int parentId;
  List<CompanyEmployee> companyEmployee;

  CompanyDepartment({this.id, this.parentId, this.companyEmployee});
}