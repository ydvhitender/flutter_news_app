import 'package:flutter_news/model/source_model.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;
  Article(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] as String? ?? '', // Handle null author
      title: json['title'] as String? ?? '', // Handle null title
      description:
          json['description'] as String? ?? '', // Handle null description
      url: json['url'] as String? ?? '', // Handle null url
      urlToImage: json['urlToImage'] as String? ?? '', // Handle null urlToImage
      publishedAt:
          json['publishedAt'] as String? ?? '', // Handle null publishedAt
      content: json['content'] as String? ?? '', // Handle null content
    );
  }
}
