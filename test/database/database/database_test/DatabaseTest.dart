import 'package:moor/moor.dart';
import '../table_test/TableTest.dart';

part 'DatabaseTest.g.dart';

@UseMoor(tables: [TableTest])
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