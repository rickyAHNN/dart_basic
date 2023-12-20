import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  Timer? _timer;

  int time = 0;
  bool _isRunning = false;
  List<String> lapTimes = [];

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _clickButton() {
    _isRunning = !_isRunning;
    //true를 false로 false를 true로 바꿔준다
    if (_isRunning) {
      _start();
    } else {
      _pause();
    }
  }

  void _start() {}

  void _pause() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('스톱 워치'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '',
                style: TextStyle(fontSize: 50),
              ),
              Text(
                '',
              ),
            ],
          ),
          SizedBox(
            height: 200,
            width: 100,
            child: ListView(
              children: const [
                Center(child: Text('스크롤', style: TextStyle(fontSize: 30))),
                Center(child: Text('스크롤', style: TextStyle(fontSize: 30))),
                Center(
                    child: Text(
                  '스크롤',
                  style: TextStyle(fontSize: 30),
                )),
                Center(
                    child: Text(
                  '스크롤',
                  style: TextStyle(fontSize: 30),
                )),
                Center(
                    child: Text(
                  '스크롤',
                  style: TextStyle(fontSize: 30),
                )),
                Center(
                    child: Text(
                  '스크롤',
                  style: TextStyle(fontSize: 30),
                )),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.orange,
                onPressed: () {},
                child: const Icon(Icons.refresh),
              ),
              FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {
                  setState(() {
                    _clickButton();
                  });
                },
                child: _isRunning
                    ? const Icon(Icons.pause)
                    : const Icon(Icons.play_arrow),
              ),
              FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
