import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/domain/InfoDomain.dart';
import 'package:moor_flutter/app/networking/service/info_user_service.dart';
import 'package:moor_flutter/app/repository/user_info_repository.dart';
import 'package:moor_flutter/app/storage/core/database/AppDatabase.dart';
import 'package:moor_flutter/app/storage/info_user_storage/info_user_dao/InfoUserDao.dart';
import 'package:moor_flutter/app/storage/user_storage/user_dao/UserDao.dart';
import 'package:moor_flutter/app/store/Info/InfoStore.dart';
import 'package:moor_flutter/app/store/home/HomeStore.dart';

class ServiceLocator{

  HomeStore homeStore;
  HomeDomain homeDomain;
  InfoDomain infoDomain;
  UserDao userDao;
  InfoUserDao infoDao;
  InfoUserRepository infoUserRepository;
  InfoUserService infoUserService;
  InfoStore infoStore;

  static final ServiceLocator instance = ServiceLocator();

  Future init() async {
    serviceModule();
    await dbModule();
    await homeModule();
    await infoModule();
  }

   Future homeModule() async {
    homeDomain = HomeDomain(userDao);
    homeStore = HomeStore(homeDomain);
  }

  Future infoModule() async {
    infoUserRepository = InfoUserRepository(infoDao, infoUserService);
    infoDomain = InfoDomain(infoUserRepository);
    infoStore = InfoStore(infoDomain);
  }

  AppDatabase get _db => AppDatabase.instance;

  Future dbModule() async {
    userDao = UserDao(_db);
    infoDao = InfoUserDao(_db);
  }

  void serviceModule(){
    infoUserService = InfoUserService();
  }
}