import 'package:flutter/material.dart';

class SimpleCounterWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SimpleCounterState();
  }

}

class SimpleCounterState extends State<SimpleCounterWidget>{

  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$counter ',style: TextStyle(fontSize: 31),),
        FloatingActionButton(onPressed: onPlusClick,child: Icon(Icons.add) ,)
      ],
    );
  }
  void onPlusClick(){
    setState(() {
      counter++;
    });
  }
}