import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/BaseDatabase.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/entity_table/info_table/InfoTable.dart';
import '../../BaseDao.dart';

part 'InfoDao.g.dart';

@UseDao(tables: [InfoTable])
class InfoDao
    extends DatabaseAccessor<AppDatabase>
    with _$InfoDaoMixin, BaseDatabase
    implements BaseDao<Info>{

  InfoDao(AppDatabase database) : super(database);

  @override
  Future insert(Insertable<Info> info) async => await into(infoTable).insert(info);

  @override
  Future<List<Info>> getAll() async => await select(infoTable).get();

  @override
  Future deleteAll(Info info) async => await delete(infoTable).delete(info);

  @override
  Stream<List<Info>> watchAll() => select(infoTable).watch();
}