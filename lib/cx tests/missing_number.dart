import 'dart:math';

import 'package:flutter/material.dart';

class MissingNumber extends StatefulWidget {
  const MissingNumber({super.key});

  @override
  State<MissingNumber> createState() => _MissingNumberState();
}

class _MissingNumberState extends State<MissingNumber> {
  final List<int> numbers = [3, 4, 9, 1, 7, 3, 2, 6];

  List<int> findMissingNumbers() {
    final highestNumber = numbers.reduce(max);
    final missingNumbers = <int>[];

    for (int i = 0; i <= highestNumber; i++) {
      if (!numbers.contains(i)) {
        missingNumbers.add(i);
      }
    }

    return missingNumbers;
  }

  @override
  Widget build(BuildContext context) {
    final missing = findMissingNumbers();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Missing Numbers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Given numbers: ${numbers.join(', ')}'),
            const SizedBox(height: 16),
            Text('Missing numbers: ${missing.join(', ')}'),
          ],
        ),
      ),
    );
  }
}