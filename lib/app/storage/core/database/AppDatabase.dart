import 'dart:developer';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:moor_flutter/app/storage/core/migration/DatabaseMigration.dart';
import 'package:moor_flutter/app/storage/info_user_storage/info_user_dao/InfoUserDao.dart';
import 'package:moor_flutter/app/storage/info_user_storage/info_user_table/InfoUserTable.dart';
import 'package:moor_flutter/app/storage/user_storage/user_dao/UserDao.dart';
import 'package:moor_flutter/app/storage/user_storage/user_table/UserTable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'AppDatabase.g.dart';

LazyDatabase? get _openConnection {
  try {
    final storageName = 'db.moorsample';
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, storageName));
      return NativeDatabase(file, logStatements: true);
    });
  } on FileSystemException catch(error) {
    log('FILE CANNOT CREATE $error');
  }
  return null;
}

NativeDatabase get vmDatabase {
  return NativeDatabase.memory(logStatements: true);
}

@DriftDatabase(tables: [UserTable, InfoUserTable], daos: [UserDao, InfoUserDao])
class AppDatabase extends _$AppDatabase {

  AppDatabase({bool production = true})
      : super(production ? (_openConnection ?? LazyDatabase(() async {
        final dbFolder = await getApplicationDocumentsDirectory();
        final file = File(p.join(dbFolder.path, 'dbStorage'));
        return NativeDatabase.createInBackground(file, logStatements: true);
      })) : vmDatabase);

  static final AppDatabase instance = AppDatabase();

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => DatabaseMigration(this).migrationOp(schemaVersion);
}