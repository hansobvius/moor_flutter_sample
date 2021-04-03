import 'package:flutter_test/flutter_test.dart';
import 'company_storage.dart';
import 'dao/company_dao.dart';

main(){

  CompanyStorage _storage;

  group('company storage test', () {
    _storage = CompanyStorage();
  });

  test('insert company data', () async {
    await _storage.insertCompany(null);
  });
}