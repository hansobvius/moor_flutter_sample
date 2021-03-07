import 'package:moor/moor.dart';
import 'package:moor_flutter/app/entity/InfoModel.dart';
import 'package:moor_flutter/app/networking/service/mock_info.dart';
import 'package:moor_flutter/app/storage/dao/info_dao/InfoDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';

class InfoUserRepository{
  
  InfoDao _dao;
  InfoUserService _service;
  
  InfoUserRepository(InfoDao dao, InfoUserService service) : 
        _dao = dao, 
        _service = service;
  
  Future<List<Info>> initInfoRepository() async {
    await _service.getInfoService().then((value) => {
      value.forEach((element) {
        insert(element);
      })
    });
    return await _dao.getAll();
  }

  Future insert(InfoModel infoEntity) async {
    try{
      await _dao.insert(InfoTableCompanion(
          image: Value("${infoEntity.image}"),
          title: Value("${infoEntity.title}"),
          description: Value("${infoEntity.description}")
      ));
    }catch(e){
      print(e.toString());
    }
  }
}