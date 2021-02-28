import 'package:moor_flutter/app/entity/InfoModel.dart';

class MockInfo{

  Future<InfoModel> getInfo() async {

    dynamic infoModelJson;

    await Future.delayed(Duration(seconds: 2), (){
      infoModelJson = {
        "results": [
          {
            "image": "",
            "title": "",
            "description": ""
          },
          {
            "image": "",
            "title": "",
            "description": ""
          },
          {
            "image": "",
            "title": "",
            "description": ""
          },
          {
            "image": "",
            "title": "",
            "description": ""
          },
          {
            "image": "",
            "title": "",
            "description": ""
          },
          {
            "image": "",
            "title": "",
            "description": ""
          },
          {
            "image": "",
            "title": "",
            "description": ""
          },
          {
            "image": "",
            "title": "",
            "description": ""
          }
        ]
      };
    });

    return InfoModel().fromJson(infoModelJson);
  }

}