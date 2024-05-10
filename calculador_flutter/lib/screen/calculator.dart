import 'package:calculador_flutter/components/display.dart';
import 'package:calculador_flutter/components/keybord.dart';
import 'package:calculador_flutter/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();
  _onpressed(String texto) {
    setState(() {
      memory.appyCommand(texto);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Column(
        children: [
          Display(memory.value),
          KeyBord(cb: _onpressed),
        ],
      ),
    );
  }
}
