class FloofModel{
  String image;

  FloofModel({
    this.image,
  });

  factory FloofModel.fromJson(dynamic data) => FloofModel(
      image: data['image'],
  );

}
