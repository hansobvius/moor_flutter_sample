import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/user_storage/user_table/UserTable.dart';

import '../user/dao/UserDao.dart';
import '../user_info/dao/InfoTestDao.dart';
import '../user_info/table/user_info_table.dart';

part 'DatabaseTest.g.dart';

@UseMoor(tables: [UserInfoTable, UserTable], daos: [InfoTestDao, UserDao])
class DatabaseTest extends _$DatabaseTest{

  DatabaseTest(QueryExecutor e) : super(e);

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