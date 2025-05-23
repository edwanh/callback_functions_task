import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _length1 = 0;
  int _length2 = 0;
  int _length3 = 0;

  int get _sum => _length1 + _length2 + _length3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InputCounterBox(
                color: Colors.lime,
                onLengthChanged: (int length) {
                  setState(() {
                    _length1 = length;
                  });
                },
              ),
              SizedBox(height: 16),
              InputCounterBox(
                color: Colors.cyan,
                onLengthChanged: (int length) {
                  setState(() {
                    _length2 = length;
                  });
                },
              ),
              SizedBox(height: 16),
              InputCounterBox(
                color: Colors.purpleAccent,
                onLengthChanged: (int length) {
                  setState(() {
                    _length3 = length;
                  });
                },
              ),
              SizedBox(height: 24),
              Text(
                "Summe aller Längen: $_sum",
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
