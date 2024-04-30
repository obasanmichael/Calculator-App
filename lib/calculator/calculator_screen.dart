import 'package:calculator_app/calculator/components/button.dart';
import 'package:calculator_app/calculator/components/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
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
                        '1002 + 2409',
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
                        '3411',
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
                  children: const <Widget>[
                    Button(text: 'C', backgroundColor: Color(0xFFB71C1C)),
                    Button(text: '⌫', backgroundColor: Color(0xFF757575)),
                    Button(text: '%', backgroundColor: Color(0xFF757575)),
                    Button(text: '/', backgroundColor: Color(0xFF757575)),
                    Button(text: '7'),
                    Button(text: '8'),
                    Button(text: '9'),
                    Button(text: 'x', backgroundColor: Color(0xFF757575)),
                    Button(text: '4'),
                    Button(text: '5'),
                    Button(text: '6'),
                    Button(text: '-', backgroundColor: Color(0xFF757575)),
                    Button(text: '1'),
                    Button(text: '2'),
                    Button(text: '3'),
                    Button(text: '+', backgroundColor: Color(0xFF757575)),
                    Button(text: '0'),
                    Button(text: '00'),
                    Button(text: '.'),
                    Button(text: '=', backgroundColor: Color(0xFF757575)),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
