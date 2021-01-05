import 'package:moor/moor.dart';
import 'package:moor_flutter/app/entity/UserModel.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:test/test.dart';

void main(){
  dbTest();
}

void dbTest(){

  AppDatabase _db;
  UserDao _dao;

  group('database test', (){
    setUp(() async {
      _db = AppDatabase.instance;
      _dao = UserDao(_db);
      Future<List<User>> getAll() async => await _dao.getAll();
      getAll().then((value) => {
        value.forEach((element) {
          _dao.deleteAll(element);
        })
      });
    });

    test('inject user', () async{
      var user = UserTableCompanion(
          name: Value("name"),
          value: Value(10)
      );
      _dao.insert(user);
    });

    test('check database', () async {
      List<UserModel> userList = [];
      var list = await _dao.getAll();
      list.forEach((element) {
        userList.add(UserModel(name: element.name, value: element.value));
      });
      expect('name', userList[0].name);
      expect(10, userList[0].name);
    });

    tearDown((){
      _db.close();
    });
  });
}



