import 'package:flutter/material.dart';

class ButtonData {
  final String text;
  final Color? color;

  ButtonData({
    required this.text,
    required this.color,
  });
}

final List<ButtonData> buttonData = [
  ButtonData(
    text: 'AC',
    color: Color(0xFFB71C1C),
  ),
  ButtonData(
    text: '⌫',
    color: Color(0xFF757575),
  ),
  ButtonData(
    text: '%',
    color: Color(0xFF757575),
  ),
  ButtonData(
    text: '/',
    color: Color(0xFF757575),
  ),
  ButtonData(
    text: '7',
    color: null,
  ),
  ButtonData(
    text: '8',
    color: null,
  ),
  ButtonData(
    text: '9',
    color: null,
  ),
  ButtonData(
    text: '×',
    color: Color(0xFF757575),
  ),
  ButtonData(
    text: '4',
    color: null,
  ),
  ButtonData(
    text: '5',
    color: null,
  ),
  ButtonData(
    text: '6',
    color: null,
  ),
  ButtonData(
    text: '-',
    color: Color(0xFF757575),
  ),
  ButtonData(
    text: '1',
    color: null,
  ),
  ButtonData(
    text: '2',
    color: null,
  ),
  ButtonData(
    text: '3',
    color: null,
  ),
  ButtonData(
    text: '+',
    color: Color(0xFF757575),
  ),
  ButtonData(
    text: '0',
    color: null,
  ),
  ButtonData(
    text: '00',
    color: null,
  ),
  ButtonData(
    text: '.',
    color: null,
  ),
  ButtonData(
    text: '=',
    color: Color(0xFF757575),
  ),
];
