
class InfoModel{

  String? image;
  String? title;
  String? description;

  InfoModel({this.image, this.title, this.description});

  Map<String, dynamic> toJson(){
    return {
      'image': this.image,
      'title': this.title,
      'description': this.description
    };
  }

  factory InfoModel.fromJson(Map<String, dynamic> json){
    return InfoModel(
        image: json['image'],
        title: json['title'],
        description: json['description']
    );
  }
}