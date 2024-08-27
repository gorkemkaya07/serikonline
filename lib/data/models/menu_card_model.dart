class MenuCardModel {
  final String title;
  final String description;
  final String imageUrl;
  final String? route;

  MenuCardModel({
    this.route,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}
