import 'package:moor/moor.dart';
import 'package:moor_flutter/app/networking/BaseService.dart';
import 'package:moor_flutter/app/storage/BaseDao.dart';

abstract class IRepository<T extends BaseDao, D extends BaseService, E extends DataClass>{

  T getDao();
  D getService();
  T get dao => getDao();
  D get service => getService();
  Future<List<E>> getServiceData();
  Future inject(E data);
}