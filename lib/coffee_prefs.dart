import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increasedStrength() {
    setState(() {
      strength++;
    });
  }

  void increasedSugars() {
    print('inc sugars by 1');
  }

  @override
  //two rows :D
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Strength: '),
            Text('$strength'),
            SizedBox(width: 50),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: increasedStrength,
              child: Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            Text('Sugars: '),
            Expanded(child: SizedBox(width: 50)),
            Text('$sugars'),
            Image.asset('assets/img/chopper.png', width: 25),
            TextButton(onPressed: increasedSugars, child: Text('+')),
          ],
        ),
      ],
    );
  }
}
