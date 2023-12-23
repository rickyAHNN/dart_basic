import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  Timer? _timer;

  int _time = 0;
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

  void _start() {
    _timer = Timer.periodic(const Duration(microseconds: 10), (
      timer,
    ) {
      setState(() {
        _time++;
      });
    });
  }

  void _pause() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    int sec = _time ~/ 100;
    String hundredth = '${_time % 100}'.padLeft(2, '0');

    return Scaffold(
      appBar: AppBar(
        title: const Text('스톱 워치'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$sec',
                style: TextStyle(fontSize: 50),
              ),
              Text(
                '$hundredth',
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
