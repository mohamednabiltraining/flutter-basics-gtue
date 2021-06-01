import 'package:flutter/material.dart';
import 'package:flutter_basics_g_tue/widgets/NewsCategoryItem.dart';

class ListViewExample extends StatelessWidget{
  static final String routeName= 'ListViewExample';
  List<Category> items = [
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
    Category('Cars', 'assets/images/cars.jpg'),
    Category('Tech', 'assets/images/tech.jpg'),
  ];


  @override
  Widget build(BuildContext context) {
  //   return ListView.builder(itemBuilder:(BuildContext context,int index){
  //     return NewsCategoryItem(items[index]);
  //   },
  //   itemCount:items.length ,);
  // }
    return Scaffold(
      appBar: AppBar(title: Text('List - grid view'),),
      body: Container(
        child: GridView.builder(
          itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2
        ),
            itemBuilder: (BuildContext context,int index){
              return NewsCategoryItem(items[index]);
            }),
      ),
    );
}
}

class Category {
  String title;
  String imagePath;

  Category(this.title, this.imagePath);

}