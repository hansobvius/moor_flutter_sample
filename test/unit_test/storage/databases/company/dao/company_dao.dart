import 'package:moor/moor.dart';
import '../../../core/DatabaseTest.dart';
import '../data/CompanyStorageDto.dart';
import '../table/company_table.dart';
import '../table/department_table.dart';
import '../table/employee_table.dart';

part 'company_dao.g.dart';

@UseDao(tables: [CompanyDbTable, DepartmentDbTable, EmployeeDbTable])
class CompanyDao extends DatabaseAccessor<DatabaseTest> with _$CompanyDaoMixin{

  CompanyDao() : super(DatabaseTest.instance);

  Future insert(CompanyTable company, DepartmentTable department, EmployeeTable employee) async {
    await into(companyDbTable).insert(company);
    await into(departmentDbTable).insert(department);
    await into(employeeDbTable).insert(employee);
  }

  Future<List<CompanyStorageDto>> getAll() async {
    List<CompanyStorageDto> companyList = [];
    var company = await select(companyDbTable).get();
    var department = await select(departmentDbTable).get();
    var employee = await select(employeeDbTable).get();

    companyList = company.map((element) {
      CompanyStorageDto.fromCompanyTable(element);
    }).toList();

    return companyList;
  }
}