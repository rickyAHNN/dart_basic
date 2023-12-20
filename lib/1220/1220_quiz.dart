import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BirthdayCard extends StatefulWidget {
  const BirthdayCard({super.key});

  @override
  State<BirthdayCard> createState() => _BirthdayCardState();
}

class _BirthdayCardState extends State<BirthdayCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  child: Lottie.asset(
                    'assets/Animation - 1703058376178.json',
                  ),
                ),
              ),
            ),
            const Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Happy Birthday Sam!',
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'From Emma',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
