import 'package:flutter/cupertino.dart';
import 'package:news/api/model/News.dart';

class NewsItem extends StatelessWidget {

  News news;
  NewsItem(this.news);

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
       children: [
         Image.network(news.urlToImage ??'', height: 200,),
         Text(news.author??''),
         Text(news.title??''),
         Text(news.publishedAt??''),
       ],
     ),
    );
  }
}
