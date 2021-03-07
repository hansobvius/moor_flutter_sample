import 'package:mobx/mobx.dart';
import 'package:moor_flutter/app/domain/InfoDomain.dart';
import 'package:moor_flutter/app/entity/InfoModel.dart';

part 'InfoStore.g.dart';

class InfoStore extends _InfoStore with _$InfoStore{
  InfoStore(InfoDomain infoDomain) : super(infoDomain);
}

abstract class _InfoStore with Store{

  InfoDomain _infoDomain;

  _InfoStore(InfoDomain infoDomain) : _infoDomain = infoDomain;

  @observable
  ObservableList<InfoModel> infoModel = ObservableList<InfoModel>().asObservable();

  @action
  Future getInfoModelList() async {
    await _infoDomain.getInfo().then((value) => {
      value.forEach((element) {
        infoModel.add(InfoModel(
          image: element.image,
          title: element.title,
          description: element.description
        ));
      })
    });
  }
}