import 'package:flutter/material.dart';
import 'dart:math';

class RandomGenerotor {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  Color changeColor() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
      return _color;
  }
}
