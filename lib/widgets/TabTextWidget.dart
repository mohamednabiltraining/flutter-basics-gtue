import 'package:flutter/material.dart';

class TabTextWidget extends StatelessWidget{
  String title;
  TabTextWidget(this.title);// constructor

  @override
  Widget build(BuildContext context) {
    return (Expanded(
        child: Container(
          margin:EdgeInsets.symmetric(horizontal: 1),
          padding:EdgeInsets.all(12),
          color:Color.fromARGB(255, 119, 27, 177),
          child: Center(
            child: Text(
              this.title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        )
    )
    );
  }
}