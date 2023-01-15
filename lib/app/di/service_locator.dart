import 'package:moor_flutter/app/domain/home_domain.dart';
import 'package:moor_flutter/app/domain/info_domain.dart';
import 'package:moor_flutter/app/networking/service/info_user_service.dart';
import 'package:moor_flutter/app/repository/user_info_repository.dart';
import 'package:moor_flutter/app/storage/core/database/app_database.dart';
import 'package:moor_flutter/app/storage/info_user_storage/info_user_dao/info_user_dao.dart';
import 'package:moor_flutter/app/storage/user_storage/user_dao/user_dao.dart';
import 'package:moor_flutter/app/store/Info/info_store.dart';
import 'package:moor_flutter/app/store/home/home_store.dart';

class ServiceLocator{

  late HomeStore homeStore;
  late HomeDomain homeDomain;
  late InfoDomain infoDomain;
  late UserDao userDao;
  late InfoUserDao infoDao;
  late InfoUserRepository infoUserRepository;
  late InfoUserService infoUserService;
  late InfoStore infoStore;

  static final ServiceLocator instance = ServiceLocator();

  Future init() async{
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