import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.brown,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 0, 147, 201), width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.pink, width: 2.0),
  ),
  hintStyle: TextStyle(
    color: Colors.white,
    
  ),
);
