import 'package:drift/drift.dart';
import 'package:moor_flutter/app/storage/core/base_dao.dart';
import 'package:moor_flutter/app/storage/core/base_database.dart';
import 'package:moor_flutter/app/storage/core/database/app_database.dart';
import 'package:moor_flutter/app/storage/info_user_storage/info_user_table/info_user_table.dart';

part 'info_user_dao.g.dart';

@DriftAccessor(tables: [InfoUserTable])
class InfoUserDao
    extends DatabaseAccessor<AppDatabase>
    with _$InfoUserDaoMixin, BaseDatabase
    implements BaseDao<InfoUserDatabase>{

  InfoUserDao(AppDatabase database) : super(database);

  @override
  Future insert(Insertable<InfoUserDatabase> info) async => await into(infoUserTable).insert(info);

  @override
  Future<List<InfoUserDatabase>> getAll() async => await select(infoUserTable).get();

  @override
  Future deleteAll(InfoUserDatabase info) async => await delete(infoUserTable).delete(info);

  @override
  Stream<List<InfoUserDatabase>> watchAll() => select(infoUserTable).watch();
}