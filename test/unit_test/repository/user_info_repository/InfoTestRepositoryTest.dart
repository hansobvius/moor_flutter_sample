import 'package:flutter_test/flutter_test.dart';
import '../../storage/core/DatabaseTest.dart';
import '../../util/NetworkConnectivity.dart';
import 'InfoTestRepository.dart';

void main(){

  InfoTestRepository _infoTestRepository;

  group('info test repository test', (){

    setUp((){
       _infoTestRepository = InfoTestRepository(NetworkConnectivity());
    });

    test('check service', () async {
      var result = await _infoTestRepository.service.getInfoService();
      expect(result.length < 0, false);
      expect(result != null, true);
    });

    test('check db', () async {
      var result = await _infoTestRepository.dao.getAll();
      expect(result is List<UserInfo>, true);
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