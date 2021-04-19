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
  CompanyDao getDao() => CompanyDao();

  Future insertCompany(CompanyStorageDto storageDto) {
    dao.insert(
        CompanyTable(
            id: storageDto.id,
            name: storageDto.name
        ),
        storageDto.departmentList.map((e) => e.toDepartmentTable()).toList(),
        storageDto.departmentList.map((e) {
          e.employeeList.map((e) => e.toEmployeeTable());
        }).toList()
    );
  }

  Future<List<CompanyStorageDto>> retrieveCompany() => dao.getAll();

}