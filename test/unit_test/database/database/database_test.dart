import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:test/test.dart';
import 'dao_test/user/UserDao.dart';
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
      _dao = UserDao(_db);
    });

    test('users can be created', () async {
      var user = TableTestCompanion(
          name: Value("name"),
          value: Value(10)
      );
      _dao.insert(user);
    });

    test('check data insertion', ()  async {
      Future<List<table>>  result = _dao.getAll();
      result.then((value) => {
        expect(value[0].name, 'name'),
        expect(value[0].value, 10)
      });
    });

    // FIXME - db are closing before unit test been completed
    // tearDown((){
    //   _db.close();
    // });
  });
}



