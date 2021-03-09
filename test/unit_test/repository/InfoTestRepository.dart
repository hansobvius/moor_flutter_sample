import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor_flutter/app/networking/service/mock_info.dart';
import '../database/database/dao_test/info/InfoTestDao.dart';
import '../database/database/database_test/DatabaseTest.dart';
import '../util/NetworkConnectivity.dart';
import 'IRepository.dart';

class InfoTestRepository extends IRepository<InfoTestDao, InfoUserService, TestInfo>{

  NetworkConnectivity _connectivity;

  InfoTestRepository(NetworkConnectivity connectivity) : _connectivity = connectivity;

  @override
  InfoTestDao getDao() => InfoTestDao(DatabaseTest(VmDatabase.memory()));

  @override
  InfoUserService getService() => InfoUserService();

  @override
  Future<List<TestInfo>> getServiceData() async {
    if(_connectivity.isConnected){
      try{
        await service.getInfoService().then((value) => {
          if(value != null) {
            value.map((e) => {
              inject(TestInfo.fromJson(e.toJson()))
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
  Future inject(TestInfo data) async {
    try{
      await dao.insert(data);
    }on IOException catch(e){
      print(e.toString());
    }
  }
}