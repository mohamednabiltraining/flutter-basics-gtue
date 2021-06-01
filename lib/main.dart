import 'package:flutter/material.dart';
import 'package:flutter_basics_g_tue/widgets/DynamicContainers/ListViewExample.dart';
import 'package:flutter_basics_g_tue/widgets/HomeScreen.dart';
import 'package:flutter_basics_g_tue/widgets/NewsCategoryItem.dart';
import 'package:flutter_basics_g_tue/widgets/SimpleCounter.dart';
import 'package:flutter_basics_g_tue/widgets/TabTextWidget.dart';
import 'package:flutter_basics_g_tue/widgets/caclulator/Caclulator.dart';

void main() {
  runApp(MyApplication());
}

// stateless widget
class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        Calculator.routeName :(context)=>Calculator(),
        ListViewExample.routeName:(context)=>ListViewExample()
      },
      initialRoute: Calculator.routeName,
    ));
  }
}
