import 'package:flutter_test/flutter_test.dart';
import '../../storage/databases/company/company_storage.dart';
import '../../storage/databases/company/data/CompanyStorageDto.dart';
import 'CompanyRepository.dart';

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


/// FIXME - tests are broking
main(){

  CompanyStorage _storage;
  CompanyRepository _repository;

  group('repository test', (){

    setUp((){
      _storage = CompanyStorage();
      _repository = CompanyRepository(_storage);
    });

    test('repository insert company data', () async {
      await _storage.insertCompany(getCompany());
    });

    test('repository insert retrieve', () async {
      await _repository.insert(getCompany());
      await _repository.getAll().then((value) => {
        expect(value.isNotEmpty, true)
      });
    });

  });

}