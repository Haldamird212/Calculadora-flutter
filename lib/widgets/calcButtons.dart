import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final Function callback;
  final String text;
  final double textSize;
  final int bg;
  const CalcButton({
    Key? key,
    required this.callback,
    required this.text,
    this.textSize = 28,
    this.bg = 0xFF566573,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
          onPressed: () => {callback(text, textSize)},
          style: TextButton.styleFrom(
            backgroundColor: Color(bg),
            foregroundColor: Color(0xFFEAECEE),
            padding: EdgeInsets.all(16.0),
            textStyle: TextStyle(fontSize: 20),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: textSize)),
          ),
        ),
      ),
    );
  }
}
