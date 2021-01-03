import 'dart:io';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/entity_table/UserTable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'AppDatabase.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [UserTable], daos: [UserDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  static final AppDatabase instance = AppDatabase();

  @override
  int get schemaVersion => 1;
}