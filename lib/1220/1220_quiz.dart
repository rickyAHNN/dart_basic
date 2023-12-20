import 'package:flutter/material.dart';

class BirthdayCard extends StatefulWidget {
  const BirthdayCard({super.key});

  @override
  State<BirthdayCard> createState() => _BirthdayCardState();
}

class _BirthdayCardState extends State<BirthdayCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              child: Image.network(
                'https://search.pstatic.net/common/'
                '?src=http%3A%2F%2Fblogfiles.naver.'
                'net%2F20160617_207%2Fjane0014_1466174155821prMFQ_'
                'PNG%2F20160616_0112451.png&type=sc960_832',
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
