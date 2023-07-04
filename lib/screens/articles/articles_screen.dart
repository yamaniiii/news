import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/shared/style/components/article_item.dart';
import 'package:news/shared/style/components/tab_item.dart';

class ArticlesScreen extends StatefulWidget {

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  int selectedIndex = 0;

List<String> sources = [
"BBC News",
"CNN News",
  "On News",
  "Sky News",
  "BIN News",
  "ALJAZIRA News",
  "RASD News",
];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      child: DefaultTabController(
        length: sources.length,
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
                  tabs: sources.map((source) => TabItem(selectedIndex==sources.indexOf(source), source)).toList(),
              ),

              SizedBox(height: 30,),

              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.all(10),
                    itemBuilder: (context , index) => ArticleItem(),
                  separatorBuilder: (context , index) =>
                  SizedBox(height: 40),
                  itemCount:10 ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
