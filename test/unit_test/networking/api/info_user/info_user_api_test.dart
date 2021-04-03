import 'package:moor_flutter/app/entity/info_user/InfoUserModel.dart';
import 'package:moor_flutter/app/networking/service/info_user_service.dart';
import 'package:test/test.dart';

void main(){

  InfoUserService _mockInfo;

  group('info service test', (){

    setUp((){
      _mockInfo = InfoUserService();
    });

    test('json return success', () async {
      var value = await _mockInfo.getInfoService();
      expect(value != null, true);
    });

    test('json return entity type', () async {
      var value = await _mockInfo.getInfoService();
      expect(value is List<InfoModel>, true);
    });

    test('model has data', () async {
      var value = await _mockInfo.getInfoService();
      expect(value != null, true);
    });

    test('model has lenght', () async {
      var value = await _mockInfo.getInfoService();
      expect(value.length > 0, true);
      expect(value.length < 0, false);
    });

    tearDown((){
      _mockInfo = null;
    });
  });
}