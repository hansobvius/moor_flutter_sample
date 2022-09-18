import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:test/test.dart';
import '../core/DatabaseTest.dart';
import 'dao/UserDao.dart';

void main(){

  DatabaseTest _db;
  UserDao _dao;

  group('database test', (){

    setUp(() async {
      _db = DatabaseTest(VmDatabase.memory());
      _dao = UserDao(_db);
    });

    test('users can be created', () async {
      var user = UserTableCompanion(
          name: Value("name"),
          value: Value(10)
      );
      var injectResult = await _dao.insert(user);
      expect(injectResult != null, true);
    });

    test('check data insertion', ()  async {
      await _dao.insert(
          UserTableCompanion(
            name: Value("name"),
            genre: Value("male"),
            value: Value(10)
        ));
      List<UserDatabase> result = await _dao.getAll();
      expect(result[0].id, 1);
      expect(result[0].name, 'name');
      expect(result[0].genre, 'male');
      expect(result[0].value, 10);
    });

    test('check data list insertion', ()  async {
      List<int> idList = [1, 2, 3];
      idList.forEach((element) async {
        await _dao.insert(
            UserTableCompanion(
                name: Value("name"),
                genre: Value("male"),
                value: Value(10)
            ));
      });
      List<UserDatabase> result = await _dao.getAll();
      expect(result.length, 3, reason: "check result list result");
      idList.asMap().forEach((key, value) {
        expect(result[key].id, value, reason: "check id result");
        expect(result[key].name, 'name', reason: "check name result");
        expect(result[key].genre, 'male', reason: "check genre result");
        expect(result[key].value, 10, reason: "check value result");
      });
    });

    tearDown((){
      _db.close();
    });
  });
}


