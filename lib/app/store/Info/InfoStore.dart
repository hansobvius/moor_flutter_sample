import 'package:mobx/mobx.dart';
import 'package:moor_flutter/app/entity/InfoModel.dart';

part 'InfoStore.g.dart';

class InfoStore = _InfoStore with _$InfoStore;

abstract class _InfoStore with Store{

  @observable
  ObservableList<InfoModel> infoModel = ObservableList<InfoModel>().asObservable();

  @action
  void getInfoModelList(){

  }
}