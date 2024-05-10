import 'package:calculador_flutter/components/button.dart';
import 'package:calculador_flutter/components/button_row.dart';
import 'package:flutter/material.dart';

class KeyBord extends StatelessWidget {
  final void Function(String) cb;
  const KeyBord({super.key, required this.cb});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          SizedBox(height: 10),
          ButtonRow(
            [
              Button.big(
                text: 'AC',
                cd: cb,
                color: Button.DARK,
              ),
              Button(
                text: '%',
                cd: cb,
                color: Button.DARK,
              ),
              Button.operation(text: '/', cd: cb),
            ],
          ),
          SizedBox(height: 10),
          ButtonRow(
            [
              Button(text: '7', cd: cb),
              Button(text: '8', cd: cb),
              Button(text: '9', cd: cb),
              Button.operation(text: 'X', cd: cb),
            ],
          ),
          SizedBox(height: 10),
          ButtonRow(
            [
              Button(text: '4', cd: cb),
              Button(text: '5', cd: cb),
              Button(text: '6', cd: cb),
              Button.operation(text: '-', cd: cb),
            ],
          ),
          SizedBox(height: 10),
          ButtonRow(
            [
              Button(text: '1', cd: cb),
              Button(text: '2', cd: cb),
              Button(text: '3', cd: cb),
              Button.operation(text: '+', cd: cb),
            ],
          ),
          SizedBox(height: 10),
          ButtonRow(
            [
              Button.big(text: '0', cd: cb),
              Button(text: ',', cd: cb),
              Button.operation(text: '=', cd: cb),
            ],
          ),
        ],
      ),
    );
  }
}
