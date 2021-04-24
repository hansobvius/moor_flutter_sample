import 'package:moor/moor.dart';
import 'package:test/test.dart';
import '../core/DatabaseTest.dart';
import 'dao/UserDao.dart';

void main(){

  UserDao _dao;

  group('database test', (){

    setUp(() {
      _dao = UserDao(DatabaseTest.instance);
    });

    test('users can be created', () async {
      var user = UserTableCompanion(
          name: Value("name"),
          value: Value(10)
      );
      _dao.insert(user);
    });

    test('check data insertion', ()  async {
      Future<List<User>>  result = _dao.getAll();
      result.then((value) => {
        expect(value[0].name, 'name'),
        expect(value[0].value, 10)
      });
    });

  });
}


