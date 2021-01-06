import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';

abstract class IMigration{

  int version;

  AppDatabase database();

  MigrationStrategy migrationOp(int version);
}