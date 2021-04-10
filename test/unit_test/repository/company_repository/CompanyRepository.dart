import 'dart:io';
import '../../storage/databases/company/company_storage.dart';
import '../../storage/databases/company/data/CompanyStorageDto.dart';

class CompanyRepository{

  CompanyStorage _storage;

  CompanyRepository(CompanyStorage storage) : _storage = storage;

  Future insert(CompanyStorageDto company) async {
    try {
      await _storage.insertCompany(company);
    } on IOException catch (e) {
      e.toString();
    }
  }

  Future<List<CompanyStorageDto>> getAll() async {
    try{
      return await _storage.retrieveCompany();
    } catch (e){
      e.toString();
    }
    return null;
  }
}