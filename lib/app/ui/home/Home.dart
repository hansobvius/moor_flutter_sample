import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:moor_flutter/app/di/ServiceLocator.dart';

class Home extends StatefulWidget{

  final ServiceLocator serviceLocator;

  Home({this.serviceLocator});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  Future mimim(){}

  final bool hasData = true;
  final int initialLength = 0;

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
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
              return (this.hasData) ? Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          child: ListView.builder(
                              padding: EdgeInsets.all(10.0),
                              itemCount: this.initialLength,
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
                              onPressed: (){},
                            ),
                          ),
                          Expanded(
                            child: RaisedButton(
                              child: Text('delete', style: TextStyle(fontSize: 14),),
                              onPressed: (){},
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
