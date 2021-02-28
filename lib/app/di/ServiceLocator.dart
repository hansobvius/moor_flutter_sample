import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:moor_flutter/app/store/home/HomeStore.dart';

class ServiceLocator{

  HomeStore homeStore;
  HomeDomain homeDomain;
  UserDao userDao;

  Future init() async{
    await userDbModule();
    await homeModule();
  }

   Future homeModule() async {
    homeDomain = HomeDomain(userDao);
    homeStore = HomeStore(homeDomain);
  }

  AppDatabase get _db => AppDatabase.instance;

  Future userDbModule() async {
    userDao = UserDao(_db);
  }
}