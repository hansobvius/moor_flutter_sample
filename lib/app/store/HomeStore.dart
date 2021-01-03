import 'package:mobx/mobx.dart';
import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/model/User.dart';

part 'HomeStore.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store{

  HomeDomain domain = HomeDomain();

  @observable
  ObservableList<User> userList = ObservableList<User>();

  @action
  void getAll(){}

  @action
  void insert(){}

  @action
  void deleteAll(){}
}