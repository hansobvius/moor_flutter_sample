import 'package:flutter_test/flutter_test.dart';
import 'package:moor_flutter/app/di/service_locator.dart';
import 'package:moor_flutter/app/store/Info/info_store.dart';

void main(){

  ServiceLocator _serviceLocator;
  InfoStore? _infoStore;

  group('INFO STORE TEST', (){

    setUp(() async {
      _serviceLocator = ServiceLocator();
      await _serviceLocator
        ..serviceModule()
        ..dbModule()
        ..infoModule();
      _infoStore = _serviceLocator.infoStore;
    });

    test('TEST STORE', () async {
      _infoStore!.getInfoModelList().then((value) => {
        expect(value != null, true)
      });
    });
  });
}