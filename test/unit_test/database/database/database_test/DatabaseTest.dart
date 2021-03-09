import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/dao/info_dao/InfoDao.dart';
import 'package:moor_flutter/app/storage/entity_table/info_table/InfoTable.dart';
import '../dao_test/info/InfoTestDao.dart';
import '../dao_test/user/UserDao.dart';
import '../table_test/info/InfoTestTable.dart';
import '../table_test/user/TableTest.dart';

part 'DatabaseTest.g.dart';

@UseMoor(tables: [TableTest, InfoTestTable], daos: [UserDao, InfoTestDao])
class DatabaseTest extends _$DatabaseTest{

  DatabaseTest(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  /// Creates a user and returns their id
  Future<int> createUser(String name, int value) {
    return into(tableTest).insert(TableTestCompanion.insert(name: name, value: value));
  }

  /// Changes the name of a user with the [id] to the [newName].
  Future<void> updateName(int id, String newName, int value) {
    return update(tableTest).replace(table(id: id, name: newName, value: value));
  }

  Stream<table> watchUserWithId(int id) {
    return (select(tableTest)..where((u) => u.id.equals(id))).watchSingle();
  }
}