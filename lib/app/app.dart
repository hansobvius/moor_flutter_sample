import 'package:flutter/material.dart';
import 'package:moor_flutter/app/ui/home/home.dart';

import 'di/service_locator.dart';
import 'ui/info/info.dart';

class App extends StatelessWidget{

  final ServiceLocator serviceLocator;

  App({required this.serviceLocator});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SQFlite Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(serviceLocator: serviceLocator,),
    );
  }
}