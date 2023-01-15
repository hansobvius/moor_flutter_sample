import 'package:drift/drift.dart';
import 'package:moor_flutter/app/storage/core/database/app_database.dart';

abstract class IMigration{

  AppDatabase database();

  MigrationStrategy migrationOp(int version);
}