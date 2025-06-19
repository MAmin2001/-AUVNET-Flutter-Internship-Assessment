class ServicesModel {
  String time;
  String image;
  String title;
  ServicesModel({required this.time, required this.image, required this.title});

  factory ServicesModel.fromJson(Map<String, dynamic> json) => ServicesModel(
    time: json['time'],
    image: json['image'],
    title: json['title'],
  );
}
