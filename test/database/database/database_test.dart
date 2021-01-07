import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/app/entity/UserModel.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:test/test.dart';

import 'database_test/DatabaseTest.dart';

void main(){
  dbTest();
}

void dbTest(){

  DatabaseTest _db;
  UserDao _dao;

  group('database test', (){

    setUp(() {
      _db = DatabaseTest(VmDatabase.memory());
    });

    test('users can be created', () async {
      final id = await _db.createUser('some user', 10);
      final user = await _db.watchUserWithId(id).first;

      expect(user.name, 'some user');
      expect(user.value, 10);
    });

    test('stream emits a new user when the name updates', () async {
      final id = await _db.createUser('first name', 10);

      final expectation = expectLater(
        _db.watchUserWithId(id).map((user) => user.name),
        emitsInOrder(['first name', 'changed name']),
      );

      await _db.updateName(id, 'changed name', 10);
      await expectation;
    });

    tearDown((){
      _db.close();
    });
  });
}



