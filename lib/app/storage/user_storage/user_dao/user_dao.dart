import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:moor_flutter/app/storage/core/base_dao.dart';
import 'package:moor_flutter/app/storage/core/base_database.dart';
import 'package:moor_flutter/app/storage/core/database/app_database.dart';
import 'package:moor_flutter/app/storage/user_storage/user_table/user_table.dart';

part 'user_dao.g.dart';

@DriftAccessor(tables: [UserTable])
class UserDao
    extends DatabaseAccessor<AppDatabase>
    with _$UserDaoMixin, BaseDatabase
    implements BaseDao<UserDatabase> {

  UserDao(AppDatabase database) : super(database);

  @override
  Future insert(Insertable<UserDatabase> user) async {
    try {
      await into(userTable).insert(user, mode: InsertMode.insertOrReplace);
    } on SqliteException catch (error) {
      debugPrint('DATABASE ERROR inject user $error');
    }
  }

  @override
  Future<List<UserDatabase>?> getAll() async {
    try {
      var getAllUserStorage = await select(userTable).get();
      return getAllUserStorage;
    } on SqliteException catch (error) {
      debugPrint('DATABASE ERROR get all user $error');
    }
    return null;
  }

  @override
  Future deleteAll(UserDatabase user) async {
    try {
      await delete(userTable).delete(user);
    } on SqliteException catch (error) {
      debugPrint('DATABASE ERROR delete all user $error');
    }
  }

  @override
  Stream<List<UserDatabase>>? watchAll() {
    try {
      return select(userTable).watch();
    } on SqliteException catch (error) {
      debugPrint('DATABASE ERROR watch all user $error');
    }
    return  null;
  }
}
