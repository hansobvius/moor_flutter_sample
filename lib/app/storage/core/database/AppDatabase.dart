import 'dart:io';
import 'package:flutter/material.dart';
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
  try{
    final storageName = 'db.moorsample';
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, storageName));
      final dir = Directory(file.path);
      var fileExists = await dir.exists();
      if (!fileExists) {
        print('APP_DATABASE file create ${dir.path}');
        dir.create(recursive: true);
      }
      return VmDatabase(file, logStatements: true);
    });
  } on FileSystemException catch(error) {
    debugPrint('FILE CANNOT CREATE $error');
  }
  return null;
}

@UseMoor(tables: [UserTable, InfoUserTable], daos: [UserDao, InfoUserDao])
class AppDatabase extends _$AppDatabase{

  AppDatabase({bool production = true})
      : super(production ? _openConnection() : VmDatabase.memory());

  static final AppDatabase instance = AppDatabase();

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => DatabaseMigration(this).migrationOp(schemaVersion);
}