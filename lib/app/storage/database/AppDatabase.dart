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
class AppDatabase extends _$AppDatabase{
  AppDatabase() : super(_openConnection());

  static final AppDatabase instance = AppDatabase();

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from <= schemaVersion) {
          print("SCHEMA VERSION: $schemaVersion FROM: $from TO $to");
          await m.alterTable(
            TableMigration(
              userTable,
              columnTransformer: {
                userTable.genre: userTable.genre.cast<String>()
              }
            )
          );
        }
      }
  );
}