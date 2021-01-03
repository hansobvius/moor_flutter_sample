import 'package:moor/moor.dart';
import 'package:moor_flutter/app/model/User.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/entity_table/UserTable.dart';

class HomeDomain{

  UserDao _dao;
  AppDatabase _db;

  HomeDomain(){
    _db = AppDatabase.instance;
    _dao = UserDao(_db);
  }

  List<User> getAll(){
    List<User> userList = [];
    _dao.getAll().then((value) => {
      for(var obj in value){
        userList.add(User(name: obj.name, value: obj.value))
      }
    });
    return userList;
  }

  void insert(User userEntity){
    var user = UserTableCompanion(
        name: Value(userEntity.name),
        value: Value(userEntity.value)
    );
    _dao.insert(user);
  }

  void delete(){
    _dao.deleteAll(UserTableCompanion());
  }
}