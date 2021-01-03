import 'package:moor/moor.dart';
import 'package:moor_flutter/app/model/User.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';

class HomeDomain{
  UserDao dao;
  AppDatabase db;

  HomeDomain(){
    db = AppDatabase.instance;
    dao = UserDao(db);
  }

  void insert(User userEntity){
    var user = UserTableCompanion(
        name: Value(userEntity.name),
        value: Value(userEntity.value)
    );
    dao.insert(user);
  }
}