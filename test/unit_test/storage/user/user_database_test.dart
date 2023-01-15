import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moor_flutter/app/storage/core/database/AppDatabase.dart';
import '../../../../lib/app/storage/user_storage/user_dao/UserDao.dart';

void main(){

  AppDatabase? _db;
  UserDao? _dao;

  group('database test', (){

    setUp(() async {
      _db = AppDatabase(production: false);
      _dao = UserDao(_db!);
    });

    test('check data insertion', ()  async {
      await _dao!.insert(
        UserTableCompanion(
          name: Value('name'),
          lastName: Value('lastName'),
          genre: Value('male'),
          value: Value(10),
        ));
      List<UserDatabase>? result = await _dao!.getAll();
      expect(result != null, true);
      if (result != null) {
        expect(result[0].id, 1);
        expect(result[0].name, 'name');
        expect(result[0].genre, 'male');
        expect(result[0].value, 10);
      }
    });

    test('check data list insertion', ()  async {
      List<int> idList = [1, 2, 3];
      idList.forEach((element) async {
        await _dao!.insert(
            UserTableCompanion(
                name: Value("name"),
                genre: Value("male"),
                value: Value(10)
            ));
      });
      List<UserDatabase>? result = await _dao!.getAll();
      expect(result != null, true);
      if (result != null) {
        expect(result.length, 3, reason: "check result list result");
        idList.asMap().forEach((key, value) {
          expect(result[key].id, value, reason: "check id result");
          expect(result[key].name, 'name', reason: "check name result");
          expect(result[key].genre, 'male', reason: "check genre result");
          expect(result[key].value, 10, reason: "check value result");
        });
      }
    });

    tearDown((){
      _db!.close();
      _dao = null;
    });
  });
}


