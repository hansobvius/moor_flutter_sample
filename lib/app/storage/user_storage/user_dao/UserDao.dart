import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/core/BaseDao.dart';
import 'package:moor_flutter/app/storage/core/BaseDatabase.dart';
import 'package:moor_flutter/app/storage/core/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/user_storage/user_table/UserTable.dart';


part 'UserDao.g.dart';

@UseDao(tables: [UserTable])
class UserDao
    extends DatabaseAccessor<AppDatabase>
    with _$UserDaoMixin, BaseDatabase
    implements BaseDao<User> {

  UserDao(AppDatabase database) : super(database);

  @override
  Future insert(Insertable<User> user) async => await into(userTable).insert(user);

  @override
  Future<List<User>> getAll() async => await select(userTable).get();

  @override
  Future deleteAll(User user) async => await delete(userTable).delete(user);

  @override
  Stream<List<User>> watchAll() => select(userTable).watch();
}
