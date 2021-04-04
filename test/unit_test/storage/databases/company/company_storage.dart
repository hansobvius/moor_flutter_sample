import 'package:moor/ffi.dart';
import '../../core/DatabaseTest.dart';
import 'dao/company_dao.dart';

abstract class IBaseStorage<T>{
  T get dao => getDao();
  T getDao();
}

class CompanyStorage extends IBaseStorage<CompanyDao>{

  @override
  CompanyDao getDao() => CompanyDao(DatabaseTest(VmDatabase.memory()));

  Future insertCompany(CompanyTable table, DepartmentTable department, EmployeeTable employee) =>
      dao.insert(table, department, employee);
}