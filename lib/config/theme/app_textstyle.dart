import 'package:flutter/material.dart';

class GlobalTextStyles {
  
  static const heading = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 60,
  );

  static const content = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 30,
  );

  static const places = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 25,
  );

  static const subtitle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 15,
  );

  static const searchbarBold = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static const searchbarRegular = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.normal,
    fontSize: 18,
  );

  static const error = TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.normal,
    fontSize: 15,
  );
}