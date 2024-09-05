import 'package:flutter/material.dart';

class DecendingOrder extends StatefulWidget {
  const DecendingOrder({super.key});

  @override
  State<DecendingOrder> createState() => _DecendingOrderState();
}

class _DecendingOrderState extends State<DecendingOrder> {
  List<int> array = [3, 2, 7, 4, 6, 9]; 
  List<int> sortedArray = [];

  @override
  void initState() {
    super.initState();
    sortedArray = sortDescending(array);
  }

  List<int> sortDescending(List<int> arr) {
    arr.sort((a, b) => b.compareTo(a)); 
    return arr;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Descending Order'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
           
            const Text(
              'Sorted Array (descending):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              sortedArray.toString(),
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

