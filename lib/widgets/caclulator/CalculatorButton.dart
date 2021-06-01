import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget{
  String buttonText;
  Function onButtonClick;

  CalculatorButton(this.buttonText,this.onButtonClick);

  @override
  Widget build(BuildContext context) {
    return 
      Expanded(child:
      Container(
        margin: EdgeInsets.all(1),
        child: ElevatedButton(onPressed: ()=>{
          onButtonClick(buttonText)
        },
            child: Text(this.buttonText,style: TextStyle(fontSize: 32),)),
      ),
      );
  }
}