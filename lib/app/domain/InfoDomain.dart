import 'file:///F:/thiag/FlutterProjects/moor_flutter_sample/lib/app/entity/info_user/InfoUserModel.dart';
import 'package:moor_flutter/app/repository/user_info_repository.dart';
import 'package:moor_flutter/app/storage/core/database/AppDatabase.dart';

class InfoDomain{

  InfoUserRepository _repository;

  InfoDomain(InfoUserRepository repsository) : _repository = repsository;

  Future<List<InfoUser>> getInfo() async {
    return await _repository.initInfoRepository();
  }
}