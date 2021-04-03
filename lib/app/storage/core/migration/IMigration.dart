import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/core/database/AppDatabase.dart';

abstract class IMigration{

  AppDatabase database();

  MigrationStrategy migrationOp(int version);
}