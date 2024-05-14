import 'package:calculator_app/calculator/calculator_screen.dart';
import 'package:calculator_app/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
          create: (context) => ThemeProvider(), child: const MyApp()),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) => MaterialApp(
        theme: Provider.of<ThemeProvider>(context).themeData,
        title: 'My calculator',
        home: CalculatorScreen(),
      ),
    );
  }
}
