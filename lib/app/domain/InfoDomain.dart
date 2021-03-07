import 'package:moor_flutter/app/entity/InfoModel.dart';
import 'package:moor_flutter/app/repository/user_info_repository.dart';
import 'package:moor_flutter/app/storage/dao/info_dao/InfoDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';

class InfoDomain{

  InfoUserRepository _repository;

  InfoDomain(InfoUserRepository repsository) : _repository = repsository;

  Future<List<Info>> getInfo() async {
    return await _repository.initInfoRepository();
  }
}