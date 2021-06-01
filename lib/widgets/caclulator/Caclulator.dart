import 'package:flutter/material.dart';
import 'package:flutter_basics_g_tue/widgets/caclulator/CalculatorButton.dart';

class Calculator extends StatefulWidget{
  static const String routeName = 'Calculator';
  @override
  State<StatefulWidget> createState() {
    return CalculatorState();
  }
}
class CalculatorState extends State<Calculator>{

  String resultTv='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Caclculator'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: Text(resultTv,style: TextStyle(fontSize: 28),),),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton('9',addDigit),
                CalculatorButton('8',addDigit),
                CalculatorButton('7',addDigit),
                CalculatorButton('*',onOperatorClick),
              ],
            ),
          ),
         Expanded(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
                CalculatorButton('6',addDigit),
                CalculatorButton('5',addDigit),
                CalculatorButton('4',addDigit),
                CalculatorButton('/',onOperatorClick),
              ],
        ),
         ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton('3',addDigit),
                CalculatorButton('2',addDigit),
                CalculatorButton('1',addDigit),
                CalculatorButton('+',onOperatorClick),
              ],

            ),
          ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                CalculatorButton('.',addDigit),
                CalculatorButton('0',addDigit),
                CalculatorButton('=',onEqualClick),
                CalculatorButton('-',onOperatorClick),
              ],
          ),
        ),
        ],
      ),
    );
  }

  void addDigit(String digit){
    setState(() {
      resultTv+=digit;
    });
  }
  String num='';
  String operator='';
  void onEqualClick(String op){
    num = calculate(num,operator,resultTv);

    setState(() {
      resultTv = num;
      num='';
      });
  }
  void onOperatorClick(String clickedOperator){

    if(operator.isEmpty){
      num = resultTv;
      operator = clickedOperator;
      setState(() {
        resultTv = '';
      });
    }else {
      num = calculate(num,operator,resultTv);
      operator = clickedOperator;
      setState(() {
        resultTv = '';
      });
    }
  }

  String calculate(String LHS,String operator,String RHS){
    double n1= double.parse(LHS);
    double n2 = double.parse(RHS);
    double res = 0;
    if(operator=='+'){
      res=n1+n2;
    }else if(operator=='-'){
      res = n1-n2;
    }else if(operator=='*'){
      res=n1*n2;
    }else if(operator=='/'){
      res=n1/n2;
    }
    return res.toString();
  }
}