import 'package:moor/moor.dart';
import 'package:moor_flutter/app/entity/UserModel.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/entity_table/UserTable.dart';

class HomeDomain{

  UserDao _dao;

  HomeDomain(){
    _dao = UserDao();
  }

  Future<List<User>> getAll() async => await _dao.getAll();

  void insert(UserModel userEntity){
    var user = UserTableCompanion(
        name: Value("${userEntity.name}"),
        genre: Value("${userEntity.genre}"),
        value: Value(userEntity.value)
    );
    _dao.insert(user);
  }

  void delete(User user) => _dao.deleteAll(user);

  Stream<List<User>> watchAll() => _dao.watchAll();
}