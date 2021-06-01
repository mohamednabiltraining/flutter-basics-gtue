import 'package:flutter/material.dart';
import 'package:flutter_basics_g_tue/widgets/DynamicContainers/ListViewExample.dart';

class NewsCategoryItem extends StatelessWidget{
 Category category;
  NewsCategoryItem(this.category);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (
          Stack(
        alignment:AlignmentDirectional.bottomEnd,
        children: [
          Image.asset(category.imagePath,fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color:Color.fromARGB(168, 119, 27, 177),
            padding: const EdgeInsets.only(top: 8,bottom: 8,left: 16,right: 16),
            margin: EdgeInsets.all(4),
            child: Text(category.title,style: TextStyle(color: Colors.white,),
            ),
          )
        ],
      )),
    );
  }
}