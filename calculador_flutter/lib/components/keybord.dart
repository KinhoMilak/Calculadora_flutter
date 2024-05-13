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
                cb: cb,
                color: Button.darkColor,
              ),
              Button(
                text: '%',
                cb: cb,
                color: Button.darkColor,
              ),
              Button.operation(text: '/', cb: cb),
            ],
          ),
          SizedBox(height: 10),
          ButtonRow(
            [
              Button(text: '7', cb: cb),
              Button(text: '8', cb: cb),
              Button(text: '9', cb: cb),
              Button.operation(text: 'X', cb: cb),
            ],
          ),
          SizedBox(height: 10),
          ButtonRow(
            [
              Button(text: '4', cb: cb),
              Button(text: '5', cb: cb),
              Button(text: '6', cb: cb),
              Button.operation(text: '-', cb: cb),
            ],
          ),
          SizedBox(height: 10),
          ButtonRow(
            [
              Button(text: '1', cb: cb),
              Button(text: '2', cb: cb),
              Button(text: '3', cb: cb),
              Button.operation(text: '+', cb: cb),
            ],
          ),
          SizedBox(height: 10),
          ButtonRow(
            [
              Button.big(text: '0', cb: cb),
              Button(text: ',', cb: cb),
              Button.operation(text: '=', cb: cb),
            ],
          ),
        ],
      ),
    );
  }
}
