import 'package:flutter_test/flutter_test.dart';
import 'package:moor_flutter/app/networking/service/info_user_service.dart';
import '../../storage/core/DatabaseTest.dart';
import '../../storage/user_info/dao/InfoTestDao.dart';
import '../../util/NetworkConnectivity.dart';
import 'InfoTestRepository.dart';

void main(){

  InfoTestRepository _infoTestRepository;
  InfoUserService _service;
  InfoTestDao _dao;

  group('info test repository test', (){

    setUp((){
      _dao = InfoTestDao(DatabaseTest.instance);
      _service = InfoUserService();
       _infoTestRepository = InfoTestRepository(_dao, _service, NetworkConnectivity());
    });

    test('check service test', () async {
      var result = await _infoTestRepository.service.getInfoService();
      expect(result.length < 0, false);
      expect(result != null, true);
    });

    test('check dao test', () async {
      var result = await _infoTestRepository.dao.getAll();
      expect(result is List<UserInfo>, true);
    });

    test('repository test', () async {
      var result = await _infoTestRepository.getServiceData();
      expect(result != null, true);
    });

    test('repository getAll method by base repository test', () async {
      var result = await _infoTestRepository.getAll(InfoTestDao(DatabaseTest.instance), InfoUserService());
      // var resultTwo = _infoTestRepository.get((value) => value.getInfoService());
      expect(result != null, true);
    });

    tearDown((){
      _infoTestRepository = null;
    });
  });
}