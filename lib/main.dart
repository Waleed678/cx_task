import 'package:cx_app/cx%20tests/array_rotation.dart';
import 'package:cx_app/cx%20tests/decending_order.dart';
import 'package:cx_app/cx%20tests/largest_number.dart';
import 'package:cx_app/cx%20tests/missing_number.dart';
import 'package:cx_app/cx%20tests/most_repeated_number.dart';
import 'package:cx_app/cx%20tests/palindrome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      ArrayRotation()
      // MostRepeatedNumber() 
      // MissingNumber()
      // LargestNumber()
      // Palindrome()
      // DecendingOrder(),
    );
  }
}