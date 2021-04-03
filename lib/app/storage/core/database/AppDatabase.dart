import 'dart:io';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/core/migration/DatabaseMigration.dart';
import 'package:moor_flutter/app/storage/info_user_storage/info_user_dao/InfoUserDao.dart';
import 'package:moor_flutter/app/storage/info_user_storage/info_user_table/InfoUserTable.dart';
import 'package:moor_flutter/app/storage/user_storage/user_dao/UserDao.dart';
import 'package:moor_flutter/app/storage/user_storage/user_table/UserTable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'AppDatabase.g.dart';

LazyDatabase _openConnection() {
  final storage = 'db.moorsample';
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, storage));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [UserTable, InfoUserTable], daos: [UserDao, InfoUserDao])
class AppDatabase extends _$AppDatabase{
  AppDatabase() : super(_openConnection());

  static final AppDatabase instance = AppDatabase();

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => DatabaseMigration(this).migrationOp(schemaVersion);
}