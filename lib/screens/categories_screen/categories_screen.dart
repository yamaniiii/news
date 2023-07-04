import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/category.dart';
import '../../shared/style/components/category_item.dart';

class CategoriesScreen extends StatelessWidget {

  Function callback;
  CategoriesScreen(this.callback);

  @override
  Widget build(BuildContext context) {

    List<CategoryModel> categories = [
      CategoryModel(color:Color(0XffC91C22) , imagePathe: "assets/images/sports.png", title:"Sports" ),
      CategoryModel(color:Color(0Xff003E90), imagePathe: "assets/images/Politics.png", title:"Politics" ),
      CategoryModel(color:Color(0XffED1E79) , imagePathe:"assets/images/health.png" , title:"Health" ),
      CategoryModel(color:Color(0Xff757373), imagePathe:"assets/images/bussines.png" , title:"Bussines" ),
      CategoryModel(color:Color(0Xff4882CF) , imagePathe:"assets/images/environment.png" , title:"Environment" ),
      CategoryModel(color:Color(0XffF2D352) , imagePathe:"assets/images/science.png" , title: "Science"),
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pick your category of interest",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 30,),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1/1.1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    callback(categories[index]);
                  },
                    child: CategoryItem(categories[index], index),
                );
              },
              itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
