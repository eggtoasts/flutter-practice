import 'package:coffee_card/coffee_prefs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffees'),
        backgroundColor: const Color.fromARGB(255, 42, 42, 50),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //each col child is a container so we can have padding / margin :D
          Container(
            color: Colors.green[200],
            padding: const EdgeInsets.all(20),
            child: Text(
              'Matcha',
              style: TextStyle(
                color: Colors.brown[900],
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            color: Colors.brown[400],
            padding: const EdgeInsets.all(20),
            child: const Text('Mocha'),
          ),
          Container(
            color: Colors.yellow[200],
            padding: const EdgeInsets.all(20),
            child: const Text('Vanilla'),
          ),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          Expanded(
            child: Image.asset(
              'assets/img/chopper.png',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
