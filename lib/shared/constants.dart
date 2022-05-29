import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  fillColor: Color.fromARGB(255, 149, 255, 152),
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 54, 196, 58), width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.pink, width: 2.0),
  ),
  hintStyle: TextStyle(
    color: Colors.white,
  ),
);