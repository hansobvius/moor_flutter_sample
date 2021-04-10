import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/user_storage/user_table/UserTable.dart';
import '../databases/company/dao/company_dao.dart';
import '../databases/company/table/company_table.dart';
import '../databases/company/table/department_table.dart';
import '../databases/company/table/employee_table.dart';
import '../databases/user/dao/UserDao.dart';
import '../databases/user_info/dao/InfoTestDao.dart';
import '../databases/user_info/table/user_info_table.dart';


part 'DatabaseTest.g.dart';

@UseMoor(
  tables: [
    UserInfoTable,
    UserTable,
    CompanyDbTable,
    DepartmentDbTable,
    EmployeeDbTable],
  daos: [
    InfoTestDao,
    UserDao,
    CompanyDao])
class DatabaseTest extends _$DatabaseTest{

  DatabaseTest(QueryExecutor e) : super(e);

  static final DatabaseTest instance = DatabaseTest(VmDatabase.memory());

  @override
  int get schemaVersion => 1;

  MigrationStrategy get migration => MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from <= schemaVersion) {
          await m.createAll();
        }
      }
  );
}