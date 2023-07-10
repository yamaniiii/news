import 'package:news/api/model/sources_response/Source.dart';

/// source : {"id":"bbc-news","name":"BBC News"}
/// author : null
/// title : "Awkward! Reporter mistakenly congratulates Badosa after loss"
/// description : "Watch former world number two Paula Badosa's reaction after a reporter mistakenly thought she had won her match against Marta Kostyuk."
/// url : "https://www.bbc.co.uk/sport/av/tennis/66134402"
/// urlToImage : "https://ichef.bbci.co.uk/news/1024/cpsprodpb/137AF/production/_130319797_p0fzlgtb.jpg"
/// publishedAt : "2023-07-07T13:45:55Z"
/// content : "'Racism, sexism, classism and elitism widespread in cricket' Video, 00:01:11'Racism, sexism, classism and elitism widespread in cricket'"

class News {
  News({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,});

  News.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }
}