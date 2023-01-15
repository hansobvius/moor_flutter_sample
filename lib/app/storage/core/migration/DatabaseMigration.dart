import 'package:drift/drift.dart';
import 'package:moor_flutter/app/storage/core/database/AppDatabase.dart';
import 'IMigration.dart';

/// Class that provides migration operations
class DatabaseMigration<T extends DataClass> implements IMigration{

  final AppDatabase _db;

  DatabaseMigration(AppDatabase db) :
      _db = db;

  @override
  AppDatabase database() => _db;

  @override
  MigrationStrategy migrationOp(int version) =>  MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from <= version) {
          print("SCHEMA VERSION: $version FROM: $from TO $to");

          // CREATE NEW COLUMN ON PRE EXISTS TABLE
          await m.addColumn(_db.userTable, _db.userTable.lastName);

          await m.createAll();
        }
      }
  );
}
