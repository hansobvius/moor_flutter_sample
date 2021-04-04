import '../../../core/DatabaseTest.dart';
import 'company_entity_test/company_model.dart';

class CompanyStorageDto{

  int id;
  String name;
  List<DepartmentStorageDto> departmentList;

  CompanyStorageDto({this.id, this.name, this.departmentList});

  factory CompanyStorageDto.fromCompanyTable(CompanyTable companyTable) => CompanyStorageDto(
      id: companyTable.id,
      name: companyTable.name,
      departmentList: []
  );

  CompanyTable toCompanyTable() => CompanyTable(
    id: this.id,
    name: this.name
  );
}

class DepartmentStorageDto{

  int id;
  int parentId;
  String name;
  List<EmployeeStorageDto> employeeList;

  DepartmentStorageDto({this.id, this.parentId, this.name, this.employeeList});

  factory DepartmentStorageDto.fromDepartmentTable(DepartmentTable departmentTable) => DepartmentStorageDto(
    id: departmentTable.id,
    parentId: departmentTable.parentId,
    name: departmentTable.name,
    employeeList: []
  );

  DepartmentTable toEmployeeTable() => DepartmentTable(
    id: this.id,
    parentId: this.parentId,
    name: this.name
  );
}

class EmployeeStorageDto{

  int id;
  int parentId;
  String name;

  EmployeeStorageDto({this.id, this.parentId, this.name});

  factory EmployeeStorageDto.fromEmployeeTable(EmployeeTable employeeTable) => EmployeeStorageDto(
    id: employeeTable.id,
    parentId: employeeTable.parentId,
    name: employeeTable.name
  );

  EmployeeTable toEmployeeTable() => EmployeeTable(
      id: this.id,
      parentId: this.parentId,
      name: this.name
  );
}