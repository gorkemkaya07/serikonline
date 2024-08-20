// lib/models/news_model.dart
class NewsModel {
  final String imageUrl;
  final String title;
  final String description;
  final String timeAgo;
  final String locality;

  NewsModel({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.timeAgo,
    required this.locality,
  });
}
