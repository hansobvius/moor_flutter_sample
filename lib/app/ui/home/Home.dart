import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:moor_flutter/app/di/ServiceLocator.dart';
import 'package:moor_flutter/app/domain/HomeDomain.dart';
import 'package:moor_flutter/app/entity/User.dart';
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

  final bool hasData = true;
  final int initialLength = 0;

  @override
  void initState(){
    _store = HomeStore()..getAll();
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  void insert(User userEntity){
    _store.insert(userEntity);
  }

  void delete(){
    _store.deleteAll();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("SQFLite App"),
      ),
      body: SafeArea(
        child: Observer(
            builder: (_){
              return (_store.userList != null && _store.userList.isNotEmpty ) ? Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          child: ListView.builder(
                              padding: EdgeInsets.all(10.0),
                              itemCount: _store.userList.length ?? 0,
                              itemBuilder: (BuildContext context, int index){
                                return Container(
                                    child: Text(
                                        'NO DATA'
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
                                this.insert(User(name: "Thiago", value: 10));
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
