import 'dart:async';

import 'package:moor/moor.dart';
import 'package:moor_flutter/app/entity/InfoModel.dart';
import 'package:moor_flutter/app/networking/BaseService.dart';
import 'package:moor_flutter/app/storage/core/BaseDao.dart';

import '../storage/core/DatabaseTest.dart';


abstract class BaseRepository<A, S, E extends DataClass>{

  A getDao();
  A get dao => getDao();

  S getService();
  S get service => getService();
  Function (Future<List<E>>) functionCallback;

  BaseRepository(A dao, S service);

  // Future<List<E>> getAllData(A dao, S service) async {
  //   var serviceResult = await (service as BaseService).getInfoService();
  //   serviceResult.forEach((element) async {
  //     await (dao as BaseDao).insert(element);
  //   });
  //   return await (dao as BaseDao).getAll();
  // }

  Future get({Function(List<Object>) callback}) async {
    var serviceResult = await (service as BaseService).getInfoService();
    serviceResult.forEach((element) async {
      ///  TODO - convert element result to DataClass type
      var buffer = BaseModelTypeResult().toInfoUser(element);
      await (dao as BaseDao).insert(buffer);
    });
    var result = await (dao as BaseDao).getAll();
    print("VALUE BaseRepository $result");
    callback(result);
  }
}

class BaseModelTypeResult{

  UserInfo toInfoUser(Object obj) => UserInfo(
    image: (obj as BaseModel).image,
    title: (obj as BaseModel).title,
    description: (obj as BaseModel).description
  );
}