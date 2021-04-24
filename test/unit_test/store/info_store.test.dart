import 'package:moor_flutter/app/di/ServiceLocator.dart';
import 'package:moor_flutter/app/store/Info/InfoStore.dart';
import 'package:test/test.dart';

void main(){

  ServiceLocator _serviceLocator;
  InfoStore _infoStore;

  group('INFO STORE TEST', (){

    setUp(() async {
      _serviceLocator = ServiceLocator();
      _serviceLocator
        ..serviceModule()
        ..dbModule()
        ..infoModule();
      _infoStore = _serviceLocator.infoStore;
    });

    test('TEST STORE', () async {
      _infoStore.getInfoModelList().then((value) => {
        expect(value != null, true)
      });
    });
  });
}