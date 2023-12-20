import 'package:flutter/material.dart';

class BirthdayCard extends StatefulWidget {
  const BirthdayCard({super.key});

  @override
  State<BirthdayCard> createState() => _BirthdayCardState();
}

class _BirthdayCardState extends State<BirthdayCard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Happy Birthday Sam!',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('From Emma')],
            )
          ],
        ),
      ),
    );
  }
}
