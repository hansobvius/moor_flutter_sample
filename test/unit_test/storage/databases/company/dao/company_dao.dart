import 'package:moor/moor.dart';
import '../../../core/DatabaseTest.dart';
import '../table/company_table.dart';
import '../table/department_table.dart';
import '../table/employee_table.dart';

part 'company_dao.g.dart';

@UseDao(tables: [CompanyDbTable, DepartmentDbTable, EmployeeDbTable])
class CompanyDao extends DatabaseAccessor<DatabaseTest> with _$CompanyDaoMixin{

  CompanyDao(DatabaseTest database) : super(database);

  Future insert(CompanyTable company) async => await into(companyDbTable).insert(company);
}