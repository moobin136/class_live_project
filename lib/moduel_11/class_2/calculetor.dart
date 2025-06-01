import 'package:MyLiveClassDailyProject/moduel_11/class_2/customElevatedButton.dart';
import 'package:flutter/material.dart';

class DailyProject extends StatefulWidget {
  const DailyProject({super.key});

  @override
  State<DailyProject> createState() => _DailyProjectState();
}

class _DailyProjectState extends State<DailyProject> {
  String titileText = 'Custom Calcuetor';
  String output = '0';
  String input = '';
  String oparend = '';
  double num1 = 0;
  double num2 = 0;

  ///butn fusion
  void updateText(String newText) {
    // print(newText);
    setState(() {
      if (newText == 'C') {
        output = '0';
        input = '';
        num1 = 0;
        num2 = 0;
      } else if (newText == '=') {
        num2 = double.parse(input);
        if (oparend == '+') {
          output = (num1 + num2).toString();
        } else if (oparend == '-') {
          output = (num1 - num2).toString();
        } else if (oparend == '*') {
          output = (num1 * num2).toString();
        } else if (oparend == '/') {
          output = (num2 != 0)
              ? ((num1 / num2).toStringAsFixed(2)).toString()
              : 'Error';
        }
        input = output;
      } else if (['+', '-', '*', '/'].contains(newText)) {
        num1 = double.parse(input);
        oparend = newText;
        input = '';
      } else {
        input += newText;
        output = input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 40, 68, 92),
          centerTitle: true,
          title: Text(titileText,
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w700))),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  output,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Row(
            children: [
              cutomElevatedButton(text: '7', onepress: () => updateText('7')),
              cutomElevatedButton(text: '8', onepress: () => updateText('8')),
              cutomElevatedButton(text: '9', onepress: () => updateText('9')),
              cutomElevatedButton(
                  bgcolor: Colors.indigoAccent,
                  fgcolor: Colors.black,
                  fontsiz: 18,
                  text: '/',
                  onepress: () => updateText('/')),
            ],
          ),
          Row(
            children: [
              cutomElevatedButton(text: '4', onepress: () => updateText('4')),
              cutomElevatedButton(text: '5', onepress: () => updateText('5')),
              cutomElevatedButton(text: '6', onepress: () => updateText('6')),
              cutomElevatedButton(
                  bgcolor: Colors.amberAccent.withOpacity(0.8),
                  fgcolor: Colors.black,
                  fontsiz: 16,
                  text: '*',
                  onepress: () => updateText('*')),
            ],
          ),
          Row(
            children: [
              cutomElevatedButton(text: '1', onepress: () => updateText('1')),
              cutomElevatedButton(text: '2', onepress: () => updateText('2')),
              cutomElevatedButton(text: '3', onepress: () => updateText('3')),
              cutomElevatedButton(
                  bgcolor: Colors.amberAccent.withOpacity(0.8),
                  fgcolor: Colors.black,
                  fontsiz: 16,
                  text: '-',
                  onepress: () => updateText('-')),
            ],
          ),
          Row(
            children: [
              cutomElevatedButton(
                  bgcolor:
                      const Color.fromARGB(255, 206, 56, 56).withOpacity(0.8),
                  fgcolor: const Color.fromARGB(255, 230, 230, 230),
                  text: 'C',
                  fontsiz: 16,
                  onepress: () => updateText('C')),
              cutomElevatedButton(text: '0', onepress: () => updateText('0')),
              cutomElevatedButton(
                  bgcolor:
                      const Color.fromARGB(255, 5, 114, 1).withOpacity(0.8),
                  fgcolor: const Color.fromARGB(255, 255, 255, 255),
                  text: '=',
                  fontsiz: 16,
                  onepress: () => updateText('=')),
              cutomElevatedButton(
                  bgcolor: Colors.amberAccent.withOpacity(0.8),
                  fgcolor: Colors.black,
                  text: '+',
                  fontsiz: 19,
                  onepress: () => updateText('+')),
            ],
          ),
        ],
      ),
    );
  }
}
