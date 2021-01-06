import 'package:flutter/cupertino.dart';
import 'package:moor/moor.dart';
import 'package:moor/src/runtime/query_builder/query_builder.dart';
import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/migration/IMigration.dart';
import 'package:moor_flutter/app/storage/entity_table/UserTable.dart';

/// Class that provides migration operations
class DatabaseMigration implements IMigration{

  final AppDatabase _db;

  HomeDomain homeDomain = HomeDomain();

  DatabaseMigration(AppDatabase db) :
      _db = db;

  @override
  int version = 2;

  @override
  AppDatabase database() => _db;

  @override
  MigrationStrategy migrationOp(int version) => MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from > 1) {
          m.alterTable(
            TableMigration($UserTableTable(_db), columnTransformer: {})
          );
          m.addColumn($UserTableTable(_db), $UserTableTable(_db).genre as GeneratedColumn);
        }
      }
  );
}
