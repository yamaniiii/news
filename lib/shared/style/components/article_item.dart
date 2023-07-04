import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage("assets/images/_118109970_livreal.png"),
         fit: BoxFit.cover,),
          ),
        ),

        SizedBox(height: 10,),

        Text( "BBC News" , style: Theme.of(context).textTheme.titleMedium, ),

        SizedBox(height: 10,),

        Text( "Why are football's biggest clubs starting a newtournament?",
        style: TextStyle( fontSize: 16 , color: Colors.black), ),

        SizedBox(height: 4,),
        
        Align(
          alignment: Alignment.centerRight,
            child: Text( "3 hours ago" , style: Theme.of(context).textTheme.titleLarge, ),
        ),

      ],
    );
  }
}