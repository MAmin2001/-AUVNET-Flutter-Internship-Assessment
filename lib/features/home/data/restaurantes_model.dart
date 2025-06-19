class RestaurantesModel {
  String time;
  String image;
  String name;
  RestaurantesModel({
    required this.time,
    required this.image,
    required this.name,
  });

  factory RestaurantesModel.fromJson(Map<String, dynamic> json) =>
      RestaurantesModel(
        time: json['time'],
        image: json['image'],
        name: json['name'],
      );
}
