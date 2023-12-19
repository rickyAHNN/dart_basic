import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
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
                onPressed: () {},
                child: const Icon(Icons.play_arrow),
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
