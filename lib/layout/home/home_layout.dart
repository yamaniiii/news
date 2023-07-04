import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/category.dart';
import 'package:news/screens/articles/articles_screen.dart';
import 'package:news/screens/categories_screen/categories_screen.dart';
import 'package:news/screens/settings/settings_screens.dart';
import 'package:news/shared/style/components/category_item.dart';

class HomeLayout extends StatefulWidget {
static const String routeName = "home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
CategoryModel? selectedCategory;
bool selectedSettings = false;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(image:
      DecorationImage(image:
      AssetImage("assets/images/pattern.jpg",),
        fit: BoxFit.cover ,
      ),
      ),
      child: Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text("News App !" ,style: TextStyle(fontSize: 24,color: Colors.white),),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                selectedCategory = null;
                selectedSettings = false;
                Navigator.pop(context);
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    Image.asset("assets/images/Icon categories.png"),
                    SizedBox(width: 14,),
                    Text("Categories"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                selectedSettings = true;
                selectedCategory = null;
                Navigator.pop(context);
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    Image.asset("assets/images/Icon settings.png"),
                    SizedBox(width: 14,),
                    Text("Settings"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
         selectedSettings?"settings": selectedCategory==null?"News App":selectedCategory!.title,
        ),
        actions: selectedCategory==null?
        null:[
          IconButton(onPressed: (){

          },
              icon: Icon(Icons.search_rounded,size: 34,)
          ),
        ],
      ),
      body: selectedCategory==null? selectedSettings?SettingsScreen():CategoriesScreen( SelectCategory,):ArticlesScreen(),
      ),
    );
  }

   SelectCategory(CategoryModel category){
    selectedCategory = category;
    setState(() {});
  }
}
