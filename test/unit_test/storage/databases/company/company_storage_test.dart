import 'package:flutter_test/flutter_test.dart';
import 'company_storage.dart';
import 'data/CompanyStorageDto.dart';


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

main(){

  CompanyStorage _storage;

  group('company storage test', () {

    setUp((){
      _storage = CompanyStorage();
    });

    test('insert company data', () async {
      await _storage.insertCompany(getCompany());
    });

    test('retrieve data from company storage', () async {
      await _storage.insertCompany(getCompany());
      await _storage.retrieveCompany().then((value) => {
        expect(value != null, true),
      });
    });

    test('test replace database', () async {
      for(int count = 0; count <= 3; count++)
        await _storage.insertCompany(getCompany());
      await _storage.retrieveCompany().then((companies) {
        print("TOTAL_COMPANIES: ${companies.length}");
        expect(companies.length > 1, false);
      });
    });
  });
}