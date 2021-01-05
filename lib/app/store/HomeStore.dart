import 'package:mobx/mobx.dart';
import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/entity/UserModel.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';

part 'HomeStore.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store{

  HomeDomain domain;
  User user;
  UserDao dao;
  AppDatabase db = AppDatabase.instance;

  _HomeStore(){
    this.domain = HomeDomain();
    this.user = User(id: null, name: null, value: null);
    this.dao = UserDao(db);
  }

  @observable
  ObservableList<UserModel> userList = ObservableList<UserModel>();

  @action
  Future getAll() async {
    var list = await domain.getAll();
    list.forEach((element) {
      userList.add(UserModel(name: element.name, value: element.value));
    });
  }

  @action
  void insert(UserModel user){
    userList.clear();
    domain.insert(user);
  }

  @action
  void deleteAll(){
    userList.clear();
    domain.delete(user);
  }
}