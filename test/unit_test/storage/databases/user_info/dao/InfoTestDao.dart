import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/core/BaseDao.dart';
import '../../../core/DatabaseTest.dart';
import '../table/user_info_table.dart';

part 'InfoTestDao.g.dart';

@UseDao(tables: [UserInfoTable])
class InfoTestDao
    extends DatabaseAccessor<DatabaseTest>
    with _$InfoTestDaoMixin
    implements BaseDao<UserInfo>{

  InfoTestDao(DatabaseTest database) : super(database);

  @override
  Future insert(Insertable<UserInfo> info) async => await into(userInfoTable).insert(info);

  @override
  Future<List<UserInfo>> getAll() async => await select(userInfoTable).get();

  @override
  Future deleteAll(UserInfo info) async => await delete(userInfoTable).delete(info);

  @override
  Stream<List<UserInfo>> watchAll() => select(userInfoTable).watch();
}