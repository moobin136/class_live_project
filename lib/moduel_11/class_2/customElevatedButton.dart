import 'dart:math';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class cutomElevatedButton extends StatelessWidget {
  const cutomElevatedButton(
      {super.key,
      required this.text,
      required this.onepress,
      this.bgcolor,
      this.fgcolor,
      this.curculerboder,
      this.width,
      this.elvevation,
      this.textpadin,
      this.fontsiz});
  final String text;
  final VoidCallback onepress;
  final bgcolor;
  final fgcolor;
  final curculerboder;
  final width;
  final elvevation;
  final double? textpadin;
  final double? fontsiz;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: ElevatedButton(
          style: cusomButtonStyle(
            bgcolor: bgcolor,
            fgcolor: fgcolor,
            elvevation: elvevation,
            curculerboder: curculerboder,
            width: width,
          ),
          onPressed: onepress,
          child: Padding(
            padding: EdgeInsets.all(textpadin ?? 16.0),
            child: Text(
              textAlign: TextAlign.center,
              text,
              style: TextStyle(fontSize: fontsiz ?? 18),
            ),
          ),
        ),
      ),
    );
  }
}

ButtonStyle cusomButtonStyle(
    {required Color? bgcolor,
    required Color? fgcolor,
    required double? curculerboder,
    required double? width,
    required double? elvevation}) {
  return ElevatedButton.styleFrom(
    alignment: Alignment.center,
    backgroundColor: bgcolor ?? Colors.black,
    foregroundColor: fgcolor ?? Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(curculerboder ?? 6),
      side: BorderSide(width: width ?? 0.0),
    ),
    elevation: elvevation ?? 0,
  );
}
