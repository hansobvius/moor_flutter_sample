import 'package:flutter/material.dart';
import 'package:moor_flutter/app/di/ServiceLocator.dart';
import 'app/App.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var service = await ServiceLocator()..init();
  runApp(App(serviceLocator: service));
}


