import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget {
  const Palindrome({super.key});

  @override
  State<Palindrome> createState() => _PalindromeState();
}

class _PalindromeState extends State<Palindrome> {
  String inputString = "madam"; 
  bool isPalindromeResult = false;

  @override
  void initState() {
    super.initState();
    isPalindromeResult = isPalindrome(inputString); 
  }

  bool isPalindrome(String input) {
    String reversed = input.split('').reversed.join('');
    return input == reversed;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Palindrome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Input String: $inputString',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 20),
            Text(
              isPalindromeResult ? 'It is a palindrome!' : 'It is not a palindrome.',
              style: const TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}