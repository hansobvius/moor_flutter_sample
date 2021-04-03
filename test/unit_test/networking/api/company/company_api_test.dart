import 'package:moor_flutter/app/entity/company/company_employee_model.dart';
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

    test('company api return company name', () async {
      var apiResult = await _companyApi.getServiceData();
      expect(apiResult[0].name == "Google", true);
      expect(apiResult[1].name == "Apple", true);
    });

    test('company api return company department', () async {
      var apiResult = await _companyApi.getServiceData();
      expect(apiResult[0].company_department != null, true);
    });

    test('company api return company department names', () async {
      var apiResult = await _companyApi.getServiceData();
      expect(apiResult[0].company_department[0].department_name == "Developer", true);
      expect(apiResult[0].company_department[1].department_name == "Human Resources", true);
    });

    test('company api return company employees', () async {
      var apiResult = await _companyApi.getServiceData();
      expect(apiResult[0].company_department[0].company_employees.length > 0, true);
      expect(apiResult[0].company_department[1].company_employees.length > 0, true);
    });

    test('company api return company employees type', () async {
      var apiResult = await _companyApi.getServiceData();
      expect(apiResult[0].company_department[0].company_employees is List<CompanyEmployee>, true);
    });
  });
}