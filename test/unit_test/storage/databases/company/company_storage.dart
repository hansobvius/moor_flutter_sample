import 'package:moor/ffi.dart';
import '../../core/DatabaseTest.dart';
import 'dao/company_dao.dart';
import 'data/CompanyStorageDto.dart';

abstract class IBaseStorage<T>{
  T get dao => getDao();
  T getDao();
}

class CompanyStorage extends IBaseStorage<CompanyDao>{

  @override
  CompanyDao getDao() => CompanyDao(DatabaseTest(VmDatabase.memory()));

  Future insertCompany(CompanyStorageDto storageDto) {
    dao.insert(
        CompanyTable(
            id: storageDto.id,
            name: storageDto.name
        ),
        DepartmentTable(
          id: storageDto.departmentList[0].id,
          parentId: storageDto.departmentList[0].parentId,
          name: storageDto.departmentList[0].name
        ),
        EmployeeTable(
            id: storageDto.departmentList[0].employeeList[0].id,
            parentId: storageDto.departmentList[0].employeeList[0].parentId,
            name: storageDto.departmentList[0].employeeList[0].name)
    );
  }


  Future<List<CompanyStorageDto>> retrieveCompany() => dao.getAll();

}