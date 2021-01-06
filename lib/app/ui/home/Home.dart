import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:moor_flutter/app/di/ServiceLocator.dart';
import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/entity/UserModel.dart';
import 'package:moor_flutter/app/storage/dao/UserDao.dart';
import 'package:moor_flutter/app/storage/database/AppDatabase.dart';
import 'package:moor_flutter/app/store/HomeStore.dart';

class Home extends StatefulWidget{

  final ServiceLocator serviceLocator;

  Home({this.serviceLocator});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  HomeStore _store;

  @override
  void initState(){
    _store = HomeStore()
      ..getAll();
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  void insert(UserModel userEntity){
    _store
      ..insert(userEntity)
      ..getAll();
  }

  void delete(){
    _store..deleteAll();

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Moor App"),
      ),
      body: SafeArea(
        child: Observer(
            builder: (_){
              return (_store.userList != null) ? Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          child: ListView.builder(
                              padding: EdgeInsets.all(10.0),
                              itemCount: _store.userList.length ?? 0,
                              itemBuilder: (BuildContext context, int index){
                                return Container(
                                    child: Text(
                                      "NAME: ${_store.userList[index].name} VALUE: ${_store.userList[index].value}"
                                    )
                                );
                              }
                          )
                      ),
                    ),
                    Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              child: Text('insert', style: TextStyle(fontSize: 14),),
                              onPressed: (){
                                this.insert(UserModel(name: "Thiago", genre: 'genre', value: Random().nextInt(10)));
                              },
                            ),
                          ),
                          Expanded(
                            child: RaisedButton(
                              child: Text('delete', style: TextStyle(fontSize: 14),),
                              onPressed: (){
                                this.delete();
                              },
                            ),
                          ),
                        ]
                    )
                  ]
              ) : Center(child: CircularProgressIndicator());
            }
        ),
      ),
    );
  }
}
