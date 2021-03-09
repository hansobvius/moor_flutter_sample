import 'package:flutter_test/flutter_test.dart';

import '../database/database/database_test/DatabaseTest.dart';
import '../util/NetworkConnectivity.dart';
import 'InfoTestRepository.dart';

void main(){

  InfoTestRepository _infoTestRepository;

  group('info test reposotory test', (){

    setUp((){
       _infoTestRepository = InfoTestRepository(NetworkConnectivity());
    });

    test('check service', () async {
      var result = await _infoTestRepository.service.getInfoService();
      expect(result.length < 0, false);
      expect(result != null, true);
    });

    test('checl db', () async {
      var result = await _infoTestRepository.dao.getAll();
      expect(result is List<TestInfo>, true);
    });

    test('repository test', () async {
      var result = await _infoTestRepository.getServiceData();
      expect(result != null, true);
    });

    tearDown((){
      _infoTestRepository = null;
    });
  });
}