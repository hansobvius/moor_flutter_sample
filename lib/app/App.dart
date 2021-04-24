import 'package:flutter/material.dart';

import 'di/ServiceLocator.dart';
import 'ui/info/Info.dart';

class App extends StatelessWidget{

  final ServiceLocator serviceLocator;

  App({this.serviceLocator});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SQFlite Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InfoView(serviceLocator: serviceLocator,),
    );
  }
}