import 'dart:io';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/BaseDatabase.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/entity_table/UserTable.dart';
import 'package:moor_flutter/app/storage/migration/DatabaseMigration.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../BaseDao.dart';

part 'AppDatabase.g.dart';

LazyDatabase _openConnection() {
  final storage = 'db.moorsample';
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, storage));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [UserTable], daos: [UserDao])
class AppDatabase extends _$AppDatabase with BaseDatabase{
  AppDatabase() : super(_openConnection());

  @override
  int _version = 2;

  static final AppDatabase instance = AppDatabase();

  @override
  int get schemaVersion => _version;

  @override
  MigrationStrategy get migration => DatabaseMigration(this).migrationOp(_version);
}