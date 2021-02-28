import 'package:moor_flutter/app/entity/InfoModel.dart';
import 'package:moor_flutter/app/networking/service/mock_info.dart';
import 'package:test/test.dart';

void main(){

  MockInfo _mockInfo;

  group('info service test', (){

    setUp((){
      _mockInfo = MockInfo();
    });

    test('json return success', () async {
      var value = await _mockInfo.getInfo();
      expect(value != null, true);
    });

    test('json return entity type', () async {
      var value = await _mockInfo.getInfo();
      expect(value is InfoModel, true);
    });

    tearDown((){
      _mockInfo = null;
    });

  });

}