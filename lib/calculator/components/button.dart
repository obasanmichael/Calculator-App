import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.symbol, this.backgroundColor});

  final String symbol;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3, ),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor
            ),
            
            child: Text(symbol)),
      ),
    );
  }
}
