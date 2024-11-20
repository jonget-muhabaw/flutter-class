import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Calculator App")),
        body: Column(
          children: <Widget>[
            const Center(
              child: Text(
                'Output',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    _buildButton('7'),
                    _buildButton('8'),
                    _buildButton('9'),
                    _buildButton('/'),
                  ],
                ),
                Row(
                  children: [
                    _buildButton('4'),
                    _buildButton('5'),
                    _buildButton('6'),
                    _buildButton('*'),
                  ],
                ),
                Row(
                  children: [
                    _buildButton('1'),
                    _buildButton('2'),
                    _buildButton('3'),
                    _buildButton('-'),
                  ],
                ),
                Row(
                  children: [
                    _buildButton('C'),
                    _buildButton('0'),
                    _buildButton('='),
                    _buildButton('+'),
                  ],
                ),
              ],
            )
          ],
        ));
  }

  Widget _buildButton(String text) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8),
      child: TextButton(
          onPressed: () => {},
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 224, 77, 243),
          ),
          child: const Text(
            '7',
            style: TextStyle(color: Colors.white),
          )),
    ));
  }
}
