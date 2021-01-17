import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:moor_flutter/app/store/HomeStore.dart';

class ServiceLocator{

  HomeStore homeStore;
  HomeDomain homeDomain;
  UserDao userDao;

  init() async{
    await userDb();
    await homeModule();
  }

   Future homeModule(){
    homeDomain = HomeDomain(userDao);
    homeStore = HomeStore(homeDomain);

  }

  AppDatabase get _db => AppDatabase.instance;

  Future userDb(){
    userDao = UserDao(_db);
  }
}