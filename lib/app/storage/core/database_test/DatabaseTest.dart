import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/user_storage/user_table/UserTable.dart';

part 'DatabaseTest.g.dart';

@UseMoor(tables: [], daos: [])
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