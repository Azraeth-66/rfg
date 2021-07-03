class FloofModel{
  String image;
  String link;

  FloofModel({
    this.image,
    this.link,
  });

  factory FloofModel.fromJson(Map<String,dynamic> floof){
    return FloofModel(
      image: floof['image'],
      link: floof['link'],
    );
  }
}