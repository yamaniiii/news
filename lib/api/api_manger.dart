import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/model/NewsResponse.dart';
import 'package:news/api/model/sources_response/Sources_response.dart';

class ApiManger{

  static const String apiKey = "befa3fa9bd1142c6bfdca61c3746b837";
  static const String baseUrl = "newsapi.org" ;

  static Future< SourcesResponse > getNewsSources() async{

    var uri = Uri.https( baseUrl , "v2/top-headlines/sources",
    {"apiKey" : apiKey});
  var response = await http.get(uri);
  var jasonString = response.body;
  var json = jsonDecode(jasonString);
  var sourcesResponse = SourcesResponse.fromJson(jsonDecode(response.body));
  return sourcesResponse;
  }
  static Future< NewsResponse > getNews(String sourceId) async {
    // https://newsapi.org/v2/everything?sources=bbc-sport&apiKey=befa3fa9bd1142c6bfdca61c3746b837
    var url = Uri.https(baseUrl , 'v2/everything',{
      'apiKey' : apiKey,
      'sources' : sourceId
    });
    var response = await http.get(url);
    return NewsResponse.fromJson(jsonDecode(response.body));
  }
}