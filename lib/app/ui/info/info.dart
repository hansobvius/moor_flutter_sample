import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:moor_flutter/app/di/service_locator.dart';
import 'package:moor_flutter/app/store/Info/info_store.dart';

class InfoView extends StatefulWidget{

  final ServiceLocator serviceLocator;


  InfoView({required this.serviceLocator});

  @override
  _InfoView createState() => _InfoView();
}

class _InfoView extends State<InfoView>{

  late InfoStore _store;

  @override
  void initState(){
    _store = widget.serviceLocator.infoStore
      ..getInfoModelList();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Observer(
          builder: (context){
            return (_store.infoModel != null && _store.infoModel.isNotEmpty)
              ? Container(
                  child: ListView.builder(
                    itemCount: _store.infoModel.length ?? 0,
                    itemBuilder: (BuildContext context, int index){
                      return Center(
                        child: Text(_store.infoModel[index].title!),
                      );
                    }
                  ),
                )
              : Center(
                  child: CircularProgressIndicator()
                );
          }
        )
      )
    );
  }
}