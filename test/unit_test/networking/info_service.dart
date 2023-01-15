import 'package:moor_flutter/app/entity/info_model.dart';
import 'package:moor_flutter/app/networking/service/info_user_service.dart';

abstract class IBaseService<T, M>{
  T getService();
  T get service => getService();
  Future<List<M>> getServiceData();
}

class InfoService extends IBaseService<InfoUserService, InfoModel>{

  @override
  InfoUserService getService() => InfoUserService();

  @override
  Future<List<InfoModel>> getServiceData() => service.getInfoService();
}