import 'package:moor/moor.dart';
import '../../core/DatabaseTest.dart';
import '../table/user_table.dart';

part 'UserDao.g.dart';

@UseDao(tables: [UserTable])
class UserDao extends DatabaseAccessor<DatabaseTest> with _$UserDaoMixin{

  final DatabaseTest database;

  UserDao(this.database) : super(database);

  Future insert(Insertable<UserDatabase> user) async => await into(userTable).insert(user);

  Future<List<UserDatabase>> getAll() async => await select(userTable).get();

  Future deleteAll(UserDatabase user) async => await delete(userTable).delete(user);

  Stream<List<UserDatabase>> watchAll() => select(userTable).watch();
}
