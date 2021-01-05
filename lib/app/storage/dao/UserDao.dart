import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/entity_table/UserTable.dart';

part 'UserDao.g.dart';

@UseDao(tables: [UserTable])
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin{

  final AppDatabase database;

  UserDao(this.database) : super(database);

  Future insert(Insertable<User> user) async => await into(userTable).insert(user);

  Future<List<User>> getAll() async => await select(userTable).get();

  Future deleteAll(User user) async => await delete(userTable).delete(user);

  Stream<List<User>> watchAll() => select(userTable).watch();
}
