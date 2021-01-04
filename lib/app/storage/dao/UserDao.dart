import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/entity_table/UserTable.dart';

part 'UserDao.g.dart';

@UseDao(tables: [UserTable])
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin{

  final AppDatabase database;

  UserDao(this.database) : super(database);

  Future insert(Insertable<TableUser> user) async{
    await into(userTable).insert(user);
  }
  Future<List<TableUser>> getAll() async{
    var result = await select(userTable).get();
    return result;
  }
  Future deleteAll() async{
    await delete(userTable).delete(userTable as TableUser);
  }
}
