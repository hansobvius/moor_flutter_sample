import 'package:moor_flutter/app/entity/info_user/InfoUserModel.dart';
import 'package:moor_flutter/app/networking/service/info_user_service.dart';
import '../../core/ibase_service.dart';


class InfoUserApi extends IBaseService<InfoUserService, InfoModel>{

  @override
  InfoUserService getService() => InfoUserService();

  @override
  Future<List<InfoModel>> getServiceData() => service.getInfoService();
}