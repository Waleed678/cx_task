import 'package:flutter/material.dart';

class LargestNumber extends StatefulWidget {
  const LargestNumber({super.key});

  @override
  State<LargestNumber> createState() => _LargestNumberState();
}

class _LargestNumberState extends State<LargestNumber> {
  List<int> numbers = [3, 7, 1, 5, 11, 19]; 
  int sumOfTwoLargest = 0;

  @override
  void initState() {
    super.initState();
    sumOfTwoLargest = findSumOfTwoLargest(numbers); 
  }

  int findSumOfTwoLargest(List<int> arr) {
    if (arr.length < 2) {
      return 0; 
    }

    arr.sort(); 
    int n = arr.length;
    return arr[n - 1] + arr[n - 2]; 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:  true,
        title: const Text('Sum of Two Largest Numbers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         const
          SizedBox(height: 20),
            const Text(
              'Sum of Two Largest Numbers:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              sumOfTwoLargest.toString(),
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}


