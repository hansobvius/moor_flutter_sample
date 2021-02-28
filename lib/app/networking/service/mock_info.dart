import 'package:moor_flutter/app/entity/InfoModel.dart';

class MockInfo{

  Future<InfoModel> getInfo() async {

    Object infoModelJson;

    await Future.delayed(Duration(seconds: 2), (){
      infoModelJson = {
        "results": [
          {
            "image": "https://cdn.pixabay.com/photo/2015/01/08/18/26/write-593333_960_720.jpg",
            "title": "Lorem ipsum dolor",
            "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit."
          },
          {
            "image": "https://cdn.pixabay.com/photo/2015/02/02/11/08/office-620817_960_720.jpg",
            "title": "Lorem ipsum dolor",
            "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit."
          },
          {
            "image": "https://cdn.pixabay.com/photo/2015/01/09/11/08/startup-594090_960_720.jpg",
            "title": "Lorem ipsum dolor",
            "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit."
          },
          {
            "image": "https://cdn.pixabay.com/photo/2015/01/08/18/25/startup-593327_960_720.jpg",
            "title": "Lorem ipsum dolor",
            "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit."
          },
          {
            "image": "https://cdn.pixabay.com/photo/2017/05/04/16/37/meeting-2284501_960_720.jpg",
            "title": "Lorem ipsum dolor",
            "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit."
          },
          {
            "image": "https://cdn.pixabay.com/photo/2018/01/11/21/27/desk-3076954_960_720.jpg",
            "title": "Lorem ipsum dolor",
            "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit."
          },
          {
            "image": "https://cdn.pixabay.com/photo/2016/02/19/11/23/women-1209678_960_720.jpg",
            "title": "Lorem ipsum dolor",
            "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit."
          },
          {
            "image": "https://cdn.pixabay.com/photo/2014/12/27/15/40/office-581131_960_720.jpg",
            "title": "Lorem ipsum dolor",
            "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit."
          }
        ]
      };
    });

    return InfoModel().fromJson(infoModelJson);
  }

}