import 'package:moor_flutter/app/entity/company/company_model.dart';
import 'package:test/test.dart';
import 'company_api.dart';

void main(){

  CompanyApi _companyApi;

  group('company api test', () {

    setUp((){
      _companyApi = CompanyApi();
    });

    test('company api return', () async {
      var apiResult = await _companyApi.getServiceData();
      expect(apiResult != null, true);
    });

    test('company api return type', () async {
      var apiResult = await _companyApi.getServiceData();
      expect(apiResult is List<Company>, true);
    });
  });
}