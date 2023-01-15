import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:moor_flutter/app/di/ServiceLocator.dart';
import 'package:moor_flutter/app/entity/UserModel.dart';
import 'package:moor_flutter/app/store/home/HomeStore.dart';

class HomeView extends StatefulWidget{

  final ServiceLocator serviceLocator;

  HomeView({required this.serviceLocator});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>{

  late HomeStore _store;

  @override
  void initState(){
    _store = widget.serviceLocator.homeStore..getAll();
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  void insert(UserModel userEntity){
    _store..insert(userEntity);
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
                                "NAME: ${_store.userList[index].name} "
                                "LAST_NAME  ${_store.userList[index].lastName} "
                                "VALUE: ${_store.userList[index].value}"
                          )
                        );
                      }
                    )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          child: Text('insert', style: TextStyle(fontSize: 14)),
                          onPressed: (){
                            this.insert(UserModel(
                                name: "Thiago",
                                lastName: 'Caiado',
                                genre: 'genre',
                                value: Random().nextInt(10)));
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          child: Text('delete', style: TextStyle(fontSize: 14)),
                          onPressed: (){
                            this.delete();
                          },
                        ),
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
