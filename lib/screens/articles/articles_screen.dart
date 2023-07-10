import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/api/api_manger.dart';
import 'package:news/shared/style/components/article_item.dart';
import 'package:news/shared/style/components/tab_item.dart';

import '../../api/model/sources_response/Source.dart';

class ArticlesScreen extends StatefulWidget {
  List<Source>? sources;
  ArticlesScreen(this.sources);

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      child: DefaultTabController(
        length: widget.sources?.length??0,
        child: Padding(
          padding: EdgeInsets.all(0.8),
          child: Column(
            children: [
              TabBar(
                indicatorColor: Colors.transparent,
                isScrollable: true,
                onTap: (index){
                  selectedIndex = index;
                  setState(() {});
                },
                tabs: widget.sources?.map((source) =>
                            TabItem(selectedIndex==widget.sources?.indexOf(source), source)).toList()??[],
              ),

              SizedBox(height: 30,),

              FutureBuilder(
                  future: ApiManger.getNews(widget.sources?[selectedIndex].id??""),
                  builder: (context , snasphot){
                    if(snasphot.connectionState == ConnectionState.waiting){
                      return Center(child: CircularProgressIndicator(),);
                    }
                    return Expanded(
                      child: ListView.builder(
                          itemBuilder: (context , index)=>ArticleItem(snasphot.data!.newsList![index]!)
                      ),
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
