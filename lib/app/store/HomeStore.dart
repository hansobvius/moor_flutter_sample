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
  void getAll() async {
    var list = await domain.getAll();
    list.forEach((element) {
      userList.add(User(name: element.name, value: element.value));
    });
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