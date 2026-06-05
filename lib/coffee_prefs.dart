import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
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
    setState(() {
      sugars++;
    });
  }

  @override
  //two rows :D
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText('Strength: '),
            Text('$strength'),
            for (int i = 0; i < strength; i++)
              Image.asset('assets/img/chopper.png', width: 25),
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
            StyledButton(onPressed: increasedSugars, child: const Text('+')),
            TextButton(onPressed: increasedSugars, child: Text('+')),
          ],
        ),
      ],
    );
  }
}
