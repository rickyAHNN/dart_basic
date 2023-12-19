import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double height;
  final double weight;

  const ResultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'data',
              style: TextStyle(fontSize: 36),
            ),
            Icon(
              Icons.ac_unit_outlined,
              color: Colors.amber,
              size: 100,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('result'),
      ),
    );
  }
}
