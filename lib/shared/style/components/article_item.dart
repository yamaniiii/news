import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/api/api_manger.dart';
import 'package:news/api/model/News.dart';
import 'package:news/api/model/sources_response/Source.dart';
import 'package:news/screens/home_news_fragment/news_item.dart';


class ArticleItem extends StatelessWidget {
  News news;
  ArticleItem(this.news);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
    borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            height: 250,
            width: double.infinity,
            fit: BoxFit.fill,
            imageUrl: news.urlToImage ??'',
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),

        SizedBox(height: 10,),

        Text( ApiManger.apiKey , style: Theme.of(context).textTheme.titleMedium, ),

        SizedBox(height: 10,),

        Text( news?.title??'',
        style: TextStyle( fontSize: 16 , color: Colors.black), ),

        SizedBox(height: 4,),

        Align(
          alignment: Alignment.centerRight,
            child: Text(
              news?.publishedAt??'',
              style: Theme.of(context).textTheme.titleLarge,
            ),
        ),
      ],
    );
  }
}