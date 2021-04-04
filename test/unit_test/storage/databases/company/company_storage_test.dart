import 'package:flutter_test/flutter_test.dart';
import '../../core/DatabaseTest.dart';
import 'company_storage.dart';
import 'dao/company_dao.dart';
import 'data/CompanyStorageDto.dart';
import 'data/company_entity_test/company_model.dart';

main(){

  CompanyStorage _storage;

  group('company storage test', () {

    setUp((){
      _storage = CompanyStorage();
    });

    test('insert company data', () async {
      await _storage.insertCompany(
          CompanyTable(
            id: 0,
            name:"Google"
          ),
          DepartmentTable(
            id: 1,
            parentId: 0,
            name: "Developer",
          ),
          EmployeeTable(
            id: 2,
            parentId: 1,
            name: "Sdrubal"
          )
      );
    });
  });
}

CompanyStorageDto getCompany() => CompanyStorageDto(
    id: 0,
    name: "Google",
    departmentList: [
      DepartmentStorageDto(
          id: 1,
          parentId: 0,
          name: "Developer",
          employeeList: [
            EmployeeStorageDto(
                id: 2,
                parentId: 1,
                name: "Sdrubal"
            )
          ]
      )
    ]
);