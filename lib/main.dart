import 'package:calculator_app/calculator/calculator_screen.dart';
import 'package:calculator_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) => MaterialApp(
        theme: lightMode,
        darkTheme: darkMode,
        title: 'My calculator',
        home: CalculatorScreen(),
      ),
    );
  }
}
