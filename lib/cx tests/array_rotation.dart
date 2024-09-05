import 'package:flutter/material.dart';

class ArrayRotation extends StatefulWidget {
  const ArrayRotation({super.key});

  @override
  State<ArrayRotation> createState() => _ArrayRotationState();
}

class _ArrayRotationState extends State<ArrayRotation> {
  List<int> originalArray = [3, 8, 9, 7, 6]; 
  List<int> rotatedArray = [];

  @override
  void initState() {
    super.initState();
    rotatedArray = rotateArrayRight(originalArray); 
  }

  List<int> rotateArrayRight(List<int> arr) {
    if (arr.isEmpty) return arr; 
    int lastElement = arr.removeLast();
    arr.insert(0, lastElement);
    return arr;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Array Rotation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Given Array:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              originalArray.toString(),
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              'Rotated Array (Right by 1):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              rotatedArray.toString(),
              style: const TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

