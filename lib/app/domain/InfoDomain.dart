import 'package:moor_flutter/app/entity/InfoModel.dart';
import 'package:moor_flutter/app/repository/user_info_repository.dart';
import 'package:moor_flutter/app/storage/core/database/AppDatabase.dart';

class InfoDomain{

  InfoUserRepository _repository;

  InfoDomain(InfoUserRepository repository) : _repository = repository;

  Future<List<InfoUserDatabase>> getInfo() async {
    return await _repository.initInfoRepository();
  }
}