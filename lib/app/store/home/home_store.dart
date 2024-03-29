import 'package:mobx/mobx.dart';
import 'package:moor_flutter/app/domain/home_domain.dart';
import 'package:moor_flutter/app/entity/user_model.dart';

part 'home_store.g.dart';

class HomeStore extends _HomeStore with _$HomeStore{
  HomeStore(HomeDomain domain) : super(domain);
}

abstract class _HomeStore with Store{

  HomeDomain _domain;

  _HomeStore(HomeDomain homeDomain) : _domain = homeDomain;

  @observable
  ObservableList<UserModel> userList = ObservableList<UserModel>().asObservable();

  @action
  Future getAll() async {
    var list = await _domain.getAll();
    if(list != null) {
      list.forEach((element) {
        userList.add(UserModel(name: element.name, lastName: element.lastName, value: element.value));
      });
    }
  }

  @action
  void insert(UserModel user){
    userList.clear();
    _domain.insert(user);
    getAll();
  }

  @action
  void deleteAll(){
    userList.clear();
    _domain.getAll().then((value) => {
      value!.forEach((element) {
        _domain.delete(element);
      })
    });
  }
}