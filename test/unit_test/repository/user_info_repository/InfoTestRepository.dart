import 'dart:io';
import 'package:moor/ffi.dart';
import 'package:moor_flutter/app/networking/service/info_user_service.dart';
import '../../storage/core/DatabaseTest.dart';
import '../../storage/user_info/dao/InfoTestDao.dart';
import '../../util/NetworkConnectivity.dart';
import '../IRepository.dart';

class InfoTestRepository extends IRepository<InfoTestDao, InfoUserService, UserInfo>{

  NetworkConnectivity _connectivity;

  InfoTestRepository(NetworkConnectivity connectivity) : _connectivity = connectivity;

  @override
  InfoTestDao getDao() => InfoTestDao(DatabaseTest(VmDatabase.memory()));

  @override
  InfoUserService getService() => InfoUserService();

  @override
  Future<List<UserInfo>> getServiceData() async {
    if(_connectivity.isConnected){
      try{
        await service.getInfoService().then((value) => {
          if(value != null) {
            value.map((e) => {
              inject(UserInfo.fromJson(e.toJson()))
           }),
          }
        });
      } on HttpResponse catch (e){
        print(e.toString());
      }
    }
    return await dao.getAll();
  }

  @override
  Future inject(UserInfo data) async {
    try{
      await dao.insert(data);
    }on IOException catch(e){
      print(e.toString());
    }
  }
}