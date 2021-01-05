import 'dart:io';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/BaseDatabase.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/entity_table/UserTable.dart';
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

  static final _version = 1;

  TableInfo table;
  GeneratedColumn column;

  static final AppDatabase instance = AppDatabase();

  @override
  int get schemaVersion => _version;

  @override
  MigrationStrategy get migration => tableMigration(table, column);

  @override
  MigrationStrategy tableMigration(TableInfo table, GeneratedColumn column) => MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from == 1) {
          await m.addColumn(table, column);
        }
      }
  );
}