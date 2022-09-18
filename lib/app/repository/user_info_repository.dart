import 'package:moor/moor.dart';
import 'package:moor_flutter/app/entity/InfoModel.dart';
import 'package:moor_flutter/app/networking/service/info_user_service.dart';
import 'package:moor_flutter/app/storage/core/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/info_user_storage/info_user_dao/InfoUserDao.dart';

class InfoUserRepository{
  
  InfoUserDao _dao;
  InfoUserService _service;
  
  InfoUserRepository(InfoUserDao dao, InfoUserService service) :
        _dao = dao, 
        _service = service;
  
  Future<List<InfoUserDatabase>> initInfoRepository() async {
    await _service.getInfoService().then((value) => {
      value.forEach((element) {
        insert(element);
      })
    });
    return await _dao.getAll();
  }

  Future insert(InfoModel infoEntity) async {
    try{
      await _dao.insert(InfoUserTableCompanion(
          image: Value("${infoEntity.image}"),
          title: Value("${infoEntity.title}"),
          description: Value("${infoEntity.description}")
      ));
    }catch(e){
      print(e.toString());
    }
  }
}