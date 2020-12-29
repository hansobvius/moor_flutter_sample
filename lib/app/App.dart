import 'package:flutter/material.dart';
import 'package:moor_flutter/app/ui/home/Home.dart';

import 'di/ServiceLocator.dart';

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
      home: Home(serviceLocator: serviceLocator,),
    );
  }
}