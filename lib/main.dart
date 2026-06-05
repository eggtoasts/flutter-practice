import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Start'),
              Container(width: 100, color: Colors.red, child: Text('one')),
              Container(width: 200, color: Colors.orange, child: Text('two')),
              Container(width: 300, color: Colors.yellow, child: Text('three')),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('End'),
              Container(width: 100, color: Colors.red, child: Text('one')),
              Container(width: 200, color: Colors.orange, child: Text('two')),
              Container(width: 300, color: Colors.yellow, child: Text('three')),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Stretch'),
              Container(width: 100, color: Colors.red, child: Text('one')),
              Container(width: 200, color: Colors.orange, child: Text('two')),
              Container(width: 300, color: Colors.yellow, child: Text('three')),
            ],
          ),
        ],
      ),
    );
  }
}
