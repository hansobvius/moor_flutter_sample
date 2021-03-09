import 'package:moor/ffi.dart';
import 'package:moor_flutter/app/storage/dao/info_dao/InfoDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';

import '../database/database/dao_test/info/InfoTestDao.dart';
import '../database/database/database_test/DatabaseTest.dart';
import 'IRepository.dart';

class InfoRepository extends IRepository<InfoTestDao, Info>{

  var _db = DatabaseTest(VmDatabase.memory());

  @override
   get dao => InfoTestDao(_db);

}