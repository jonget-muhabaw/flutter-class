import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _input = '';
  String _output = '';
  void _onInputButton(String textInput) {
    try {
      if (textInput == 'C') {
        _input = '';
        _output = '';
      } else if (textInput == '=') {
        if (textInput.isNotEmpty) {
          _calculate(textInput);
        } else {
          _output = "Error";
        }
      } else {
        _input += textInput;//_input = _input+textInput
        // _input = 12*5
      }
    } catch (e) {
      _output = "error";
    }
  }

  String _calculate(String input) {
    var exp = Expression.parse(input);
    var evaluator = const ExpressionEvaluator();
    // var context = {};
    var result = evaluator.eval(exp, {});
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Calculator App")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Center(
              child: Text(
                _input,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                _output,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            Column(
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
          onPressed: () => {_onInputButton(text)},
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 224, 77, 243),
          ),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          )),
    ));
  }
}
