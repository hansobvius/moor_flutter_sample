import 'package:mobx/mobx.dart';
import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/entity/User.dart';

part 'HomeStore.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store{

  HomeDomain domain = HomeDomain();

  @observable
  ObservableList<User> userList = ObservableList<User>();

  @action
  void getAll(){
    var list = domain.getAll();
    print("LIST RESULT: $list");
    userList.addAll(list);
  }

  @action
  void insert(User user){
    userList.clear();
    domain.insert(user);
  }

  @action
  void deleteAll(){
    userList.clear();
    domain.delete();
  }
}