import 'package:moor/moor.dart';
import 'package:moor_flutter/app/storage/BaseDao.dart';

abstract class IRepository<T extends BaseDao, E extends DataClass>{

  T get dao;

}