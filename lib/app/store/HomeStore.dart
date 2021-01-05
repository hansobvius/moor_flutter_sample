import 'package:mobx/mobx.dart';
import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/entity/UserModel.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';

part 'HomeStore.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store{

  HomeDomain domain;

  _HomeStore(){
    this.domain = HomeDomain();
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
    domain.getAll().then((value) => {
      value.forEach((element) {
        domain.delete(element);
      })
    });
  }
}