import 'package:flutter/material.dart';
import 'package:moor_flutter/app/di/service_locator.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var service = await ServiceLocator()..init();
  runApp(App(serviceLocator: service));
}


