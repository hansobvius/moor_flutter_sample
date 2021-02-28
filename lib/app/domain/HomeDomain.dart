import 'package:moor/moor.dart';
import 'package:moor_flutter/app/entity/UserModel.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';

class HomeDomain{

  UserDao _dao;

  HomeDomain(UserDao dao) : _dao = dao;

  Future<List<User>> getAll() async => await _dao.getAll();

  Future insert(UserModel userEntity) async {
    var user = UserTableCompanion(
        name: Value("${userEntity.name}"),
        genre: Value("${userEntity.genre}"),
        value: Value(userEntity.value)
    );
    await _dao.insert(user);
  }

  Future delete(User user) async => await _dao.deleteAll(user);

  Stream<List<User>> watchAll() => _dao.watchAll();
}