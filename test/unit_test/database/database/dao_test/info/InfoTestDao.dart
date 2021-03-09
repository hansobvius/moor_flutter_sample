import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/BaseDao.dart';
import '../../database_test/DatabaseTest.dart';
import '../../table_test/info/InfoTestTable.dart';

part 'InfoTestDao.g.dart';

@UseDao(tables: [InfoTestTable])
class InfoTestDao
    extends DatabaseAccessor<DatabaseTest>
    with _$InfoTestDaoMixin
    implements BaseDao<TestInfo>{

  InfoTestDao(DatabaseTest database) : super(database);

  @override
  Future insert(Insertable<TestInfo> info) async => await into(infoTestTable).insert(info);

  @override
  Future<List<TestInfo>> getAll() async => await select(infoTestTable).get();

  @override
  Future deleteAll(TestInfo info) async => await delete(infoTestTable).delete(info);

  @override
  Stream<List<TestInfo>> watchAll() => select(infoTestTable).watch();
}