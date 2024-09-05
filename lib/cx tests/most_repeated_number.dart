import 'package:flutter/material.dart';

class MostRepeatedNumber extends StatefulWidget {
  const MostRepeatedNumber({super.key});

  @override
  State<MostRepeatedNumber> createState() => _MostRepeatedNumberState();
}

class _MostRepeatedNumberState extends State<MostRepeatedNumber> {
  final List<int> numbers = [4, 3, 5, 6, 4, 7, 9, 2, 4, 6, 3, 4, 6, 3, 4, 8, 5, 1, 5];

  Map<int, int> countOccurrences(List<int> numbers) {
    final occurrences = <int, int>{};
    for (final number in numbers) {
      occurrences[number] = (occurrences[number] ?? 0) + 1;
    }
    return occurrences;
  }

  MapEntry<int, int> findMostRepeated(Map<int, int> occurrences) {
    MapEntry<int, int>? mostRepeated;
    for (final entry in occurrences.entries) {
      if (mostRepeated == null || entry.value > mostRepeated.value) {
        mostRepeated = entry;
      }
    }
    return mostRepeated!;
  }

  @override
  Widget build(BuildContext context) {
    final occurrences = countOccurrences(numbers);
    final mostRepeated = findMostRepeated(occurrences);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Most Repeated Number'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Given numbers: ${numbers.join(', ')}'),
            const SizedBox(height: 16),
            Text('Most repeated number: Here  ${mostRepeated.key} is repeated ${mostRepeated.value} times'),
          ],
        ),
      ),
    );
  }
}