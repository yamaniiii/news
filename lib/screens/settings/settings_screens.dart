import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language", style: TextStyle(fontSize: 26 , color: Colors.black),),
          SizedBox(height: 12,),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: double.infinity,
              decoration: BoxDecoration(
                border : Border.all(color: Theme.of(context).primaryColor,width: 4),),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English" , style: TextStyle(color: Theme.of(context).primaryColor , fontSize: 14) ),
              Icon(
                Icons.arrow_drop_down,
                color: Theme.of(context).primaryColor,
                size: 20,
              ),
            ],
          )
          ),

        ],
      ),
    );
  }
}
