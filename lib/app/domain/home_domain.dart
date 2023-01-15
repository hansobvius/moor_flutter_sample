import 'package:moor_flutter/app/entity/user_model.dart';
import 'package:moor_flutter/app/storage/core/database/app_database.dart';
import 'package:moor_flutter/app/storage/user_storage/user_dao/user_dao.dart';

class HomeDomain{

  UserDao _dao;

  HomeDomain(UserDao dao) : _dao = dao;

  Future<List<UserDatabase>?> getAll() async => await _dao.getAll();

  Future insert(UserModel userEntity) async {
    // var user = UserTableCompanion(
    //     name: Value("${userEntity.name}"),
    //     lastName: Value("${userEntity.lastName}"),
    //     genre: Value("${userEntity.genre}"),
    //     value: Value(userEntity.value)
    // );
    // await _dao.insert(user);
  }

  Future delete(UserDatabase user) async => await _dao.deleteAll(user);

  Stream<List<UserDatabase>>? watchAll() => _dao.watchAll();
}