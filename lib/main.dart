import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/widgets/calcButtons.dart';
import 'package:math_expressions/math_expressions.dart';

void main(List<String> args) {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget {
  CalcApp({Key? key}) : super(key: key);

  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  String _history = "";
  String _expression = "";

  void clear(String text){
    _expression = "";
  }

  void allClear(String text) {
    // setState(()=>{
    //   _history = "";
    //   _expression = "";
    //   }
    // );
  }

  void evaluate(String text){
    Parser p = Parser();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: Scaffold(
        backgroundColor: Color(0xFF17202A),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                alignment: Alignment(1, 1),
                child: Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Text(
                    _history,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 24.0,
                        color: Color(0xFF808B96),
                      ),
                    ), // GoogleFonts
                  ),
                ),
              ),
              Container(
                alignment: Alignment(1, 1),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    _expression,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48.0,
                        color: Color(0xFFEAECEE),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    bg: 0xFF92221,
                    callback: allClear, 
                    text: "AC", 
                    textSize: 20,
                  ),
                  CalcButton(
                    bg: 0xFF92b21,
                    callback: clear, 
                    text: "C", 
                    textSize: 20,
                  ),
                  CalcButton(
                    bg: 0xFFbaa00,
                    callback: allClear, 
                    text: "%", 
                    textSize: 20,
                  ),
                  CalcButton(
                    bg: 0xFFbaa00,
                    callback: allClear, 
                    text: "/", 
                  textSize: 20,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    callback: allClear,
                    text: "7",
                    textSize: 20,
                  ),
                  CalcButton(
                    callback: allClear,
                    text: "8",
                    textSize: 20,
                  ),
                  CalcButton(
                    callback: allClear,
                    text: "9",
                    textSize: 20,
                  ),
                  CalcButton(
                    bg: 0xFFbaa00,
                    callback: allClear, 
                    text: "X", 
                  textSize: 20,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    callback: allClear,
                    text: "4",
                    textSize: 20
                  ),
                  CalcButton(
                    callback: allClear,
                    text: "5",
                    textSize: 20,
                  ),
                  CalcButton(
                    callback: allClear,
                    text: "6",
                    textSize: 20,
                  ),
                  CalcButton(
                    bg: 0xFFbaa00,
                    callback: allClear, 
                    text: "-", 
                  textSize: 20,
                  ),
                  ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    callback: allClear,
                    text: "1",
                    textSize: 20,
                  ),
                  CalcButton(
                    callback: allClear,
                    text: "2",
                    textSize: 20,
                  ),
                  CalcButton(
                    callback: allClear,
                    text: "3",
                    textSize: 20,
                  ),
                  CalcButton(
                    bg: 0xFFbaa00,
                    callback: allClear, 
                    text: "+", 
                  textSize: 20,
                  ),
                  ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    callback: allClear, 
                    text: "0",
                    textSize: 20,
                  ),
                  CalcButton(
                    callback: allClear,
                    text: "00",
                    textSize: 20,
                  ),
                  CalcButton(
                    callback: allClear,
                    text: ",",
                    textSize: 20,
                  ),
                  CalcButton(
                    bg: 0xFF1e449,
                    callback: allClear, 
                    text: "=", 
                    textSize: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
