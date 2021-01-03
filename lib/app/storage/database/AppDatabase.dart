import 'dart:io';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/entity_table/UserTable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

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
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  static final _version = 1;

  static final AppDatabase instance = AppDatabase();

  @override
  int get schemaVersion => _version;
}