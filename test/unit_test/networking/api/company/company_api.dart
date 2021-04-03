import 'package:moor_flutter/app/entity/company/company_model.dart';
import 'package:moor_flutter/app/networking/service/company/company_service.dart';
import '../../core/ibase_service.dart';

class CompanyApi extends IBaseService<CompanyService, Company>{

  @override
  CompanyService getService() => CompanyService();

  @override
  Future<List<Company>> getServiceData() async {
    List<Company> companyList = [];
    Map<String, dynamic> serviceResult = await service.getCompanies();
    await serviceResult["results"].forEach((element) {
      companyList.add(Company.fromJson(element));
    });
    return companyList;
  }
}
