import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/core/BaseDao.dart';
import 'package:moor_flutter/app/storage/core/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/info_user_storage/info_user_table/InfoUserTable.dart';

part 'InfoUserDao.g.dart';

@UseDao(tables: [InfoUserTable])
class InfoUserDao
    extends DatabaseAccessor<AppDatabase>
    with _$InfoUserDaoMixin
    implements BaseDao<InfoUser>{

  InfoUserDao(AppDatabase database) : super(database);

  @override
  Future insert(InfoUser info) async => await into(infoUserTable).insert(info);

  @override
  Future<List<InfoUser>> getAll() async => await select(infoUserTable).get();

  @override
  Future deleteAll(InfoUser info) async => await delete(infoUserTable).delete(info);

  @override
  Stream<List<InfoUser>> watchAll() => select(infoUserTable).watch();
}