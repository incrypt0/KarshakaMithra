import 'package:flutter/material.dart';

InputDecoration textInputDecoration = InputDecoration(
  hintText: "",
  filled: true,
  fillColor: Colors.white,
  border:OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
    
  ), 
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
    borderSide: BorderSide(color: Colors.green, width: 2),
  ),
);

