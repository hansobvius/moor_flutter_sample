
class InfoModel{

  String image;
  String title;
  String description;

  InfoModel(this.image, this.title, this.description);

  Map<String, dynamic> toJson(){
    return {
      'image': this.image,
      'title': this.title,
      'description': this.description
    };
  }

  InfoModel fromJson(Map<String, dynamic> json){
    return InfoModel(
        json['image'],
        json['title'],
        json['description']
    );
  }

}