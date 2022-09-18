import 'package:flutter/material.dart';
import 'package:moor/ffi.dart';
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
  Future insert(Insertable<User> user) async {
    try {
      await into(userTable).insert(user, mode: InsertMode.insertOrReplace);
    } on SqliteException catch (error) {
      debugPrint('DATABASE ERROR inject user $error');
    }
  }

  @override
  Future<List<User>> getAll() async {
    try {
      return await select(userTable).get();
    } on SqliteException catch (error) {
      debugPrint('DATABASE ERROR get all user $error');
    }
    return null;
  }

  @override
  Future deleteAll(User user) async {
    try {
      await delete(userTable).delete(user);
    } on SqliteException catch (error) {
      debugPrint('DATABASE ERROR delete all user $error');
    }
  }

  @override
  Stream<List<User>> watchAll() {
    try {
      return select(userTable).watch();
    } on SqliteException catch (error) {
      debugPrint('DATABASE ERROR watch all user $error');
    }
    return  null;
  }
}
