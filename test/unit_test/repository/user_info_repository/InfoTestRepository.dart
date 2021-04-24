import 'dart:io';
import 'package:moor/ffi.dart';
import 'package:moor_flutter/app/networking/service/info_user_service.dart';
import '../../storage/core/DatabaseTest.dart';
import '../../storage/user_info/dao/InfoTestDao.dart';
import '../../util/NetworkConnectivity.dart';
import '../BaseRepository.dart';
import '../IRepository.dart';

class InfoTestRepository extends BaseRepository<InfoTestDao, InfoUserService, UserInfo> implements IRepository<InfoTestDao, InfoUserService, UserInfo> {

  NetworkConnectivity _connectivity;

  InfoTestRepository(InfoTestDao dao, InfoUserService service, NetworkConnectivity connectivity) : super(dao, service){
    _connectivity = connectivity;
  }

  /// Abstract methods provided by BaseRepository inheritance
  InfoTestDao getDao() => InfoTestDao(DatabaseTest.instance);
  InfoUserService getService() => InfoUserService();

  /// Abstract methods provided by IRepository interface
  InfoTestDao get dao => getDao();
  InfoUserService get service => getService();



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

  /// TODO - test BaseRepository abstract method
  @override
  Future<List<UserInfo>> getAll(InfoTestDao dao, InfoUserService service) async {
    try{
      await service.getInfoService().then((value) async {
        value.map((e) => {
          dao.insert(UserInfo.fromJson(e.toJson()))
        });
      });
      return await dao.getAll();
    } catch(e) {
      e.toString();
    }
    return null;
  }

  // @override
  // Future<List<UserInfo>> getDatabase({Function(Future<List<UserInfo>> data) callback}) {
  //   // TODO: implement getDatabase
  // }

  // @override
  // Future<E> get<E>(Future<List<E>> Function(InfoUserService value) onValue, {Function onError}) {
  //   // TODO: implement get
  //   throw UnimplementedError();
  // }
}