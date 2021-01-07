import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import '../database_test/DatabaseTest.dart';
import '../table_test/TableTest.dart';

part 'UserDao.g.dart';

@UseDao(tables: [TableTest])
class UserDao extends DatabaseAccessor<DatabaseTest> with _$UserDaoMixin{

  final DatabaseTest database;

  UserDao(this.database) : super(database);

  Future insert(Insertable<table> user) async => await into(tableTest).insert(user);

  Future<List<table>> getAll() async => await select(tableTest).get();

  Future deleteAll(table user) async => await delete(tableTest).delete(user);

  Stream<List<table>> watchAll() => select(tableTest).watch();
}
