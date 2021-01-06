import 'package:moor/moor.dart';
import 'package:moor/src/runtime/query_builder/query_builder.dart';
import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/migration/IMigration.dart';

/// Class that provides migration operations
class DatabaseMigration<T extends DataClass> implements IMigration{

  final AppDatabase _db;

  HomeDomain homeDomain = HomeDomain();

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
          print("SCHEMA VERSION: ${version} FROM: $from TO $to");
          await m.addColumn(_db.userTable, _db.userTable.genre);
        }
      }
  );
}
