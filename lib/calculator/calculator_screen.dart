import 'package:calculator_app/calculator/components/button.dart';
import 'package:calculator_app/calculator/components/button_data.dart';
import 'package:calculator_app/calculator/components/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = '0';
  String equation = '0';
  String expression = '';

  buttonPressed(String buttonText) {
    String containDecimal(dynamic result) {
      if (result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if (!(int.parse(splitDecimal[1]) > 0)) {
          return result = splitDecimal[0].toString();
        }
      }
      return result;
    }

    setState(() {
      if (buttonText == 'AC') {
        equation = '0';
        _output = '0';
      } else if (buttonText == '⌫') {
        equation = equation.substring(0, equation.length - 1);
      } else if (buttonText == "+/-") {
        if (equation[0] != '-') {
          equation = '-$equation';
        } else {
          equation = equation.substring(1);
        }
      } else if (buttonText == "=") {
        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('/', '/');
        expression = expression.replaceAll('%', '%');

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          double result = exp.evaluate(EvaluationType.REAL, cm);

          if (result % 1 == 0) {
            _output = result.toInt().toString();
          } else {
            _output = result.toStringAsFixed(7); // Limit to 7 decimal places
            _output = _output.replaceAll(
                RegExp(r'\.?0*$'), ''); // Remove trailing zeroes
            if (_output.contains('%')) {
              _output = containDecimal(_output);
            }
          }
        } catch (e) {
          _output = "Error";
        }
      } else {
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: MyAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Spacer(),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        equation,
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        _output,
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 45.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                height: 490.h,
                child: GridView.count(
                  primary: false,
                  crossAxisCount: 4,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: buttonData
                      .map((data) => Button(data.text, data.color,
                          () => buttonPressed(data.text)))
                      .toList(),
                ),
              )
            ],
          ),
        ));
  }
}
