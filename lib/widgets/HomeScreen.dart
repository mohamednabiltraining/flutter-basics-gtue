import 'package:flutter/material.dart';
import 'package:flutter_basics_g_tue/widgets/DynamicContainers/ListViewExample.dart';
import 'package:flutter_basics_g_tue/widgets/caclulator/Caclulator.dart';

class HomeScreen extends StatelessWidget{
  static final String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Home'),),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context,
                    Calculator.routeName );
              },
                  child: Text('Calculator')),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, ListViewExample.routeName);
              },
                  child: Text('List View Example')),
            ],
          ),
        ),
      ),
    );
  }
}