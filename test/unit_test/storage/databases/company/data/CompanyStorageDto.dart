class CompanyStorageDto{

  int id;
  String name;
  List<DepartmentStorageDto> departmentList;

  CompanyStorageDto(this.id, this.name, this.departmentList);
}

class DepartmentStorageDto{

  int id;
  int parentId;
  String name;
  List<EmployeeStorageDto> employeeList;

  DepartmentStorageDto(this.id, this.parentId, this.name, this.employeeList);
}

class EmployeeStorageDto{

  int id;
  int parentId;
  String name;

  EmployeeStorageDto(this.id, this.parentId, this.name);
}