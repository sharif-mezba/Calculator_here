import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:math_expressions/math_expressions.dart';

void main() {
  return runApp(calculator_by_mezba());
}

class calculator_by_mezba extends StatefulWidget {
  @override
  State<calculator_by_mezba> createState() => _calculator_by_mezbaState();
}

class _calculator_by_mezbaState extends State<calculator_by_mezba> {
  String input = "";
  String xx = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Calculator",
            style: TextStyle(fontSize: 40, color: Colors.yellow),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            input,
                            style: TextStyle(fontSize: 50),
                          ),
                          Text(
                            xx,
                            style: TextStyle(fontSize: 50),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "1";
                          });
                        },
                        child: Container(
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          color: Colors.yellow[600],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "2";
                          });
                        },
                        child: Container(
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          color: Colors.yellow[400],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "3";
                          });
                        },
                        child: Container(
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          color: Colors.yellow[600],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "+";
                          });
                        },
                        child: Container(
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          color: Colors.blue[400],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "4";
                          });
                        },
                        child: Container(
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          color: Colors.yellow[600],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "5";
                          });
                        },
                        child: Container(
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          color: Colors.yellow[400],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "6";
                          });
                        },
                        child: Container(
                          child: Text(
                            "6",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          color: Colors.yellow[600],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "-";
                          });
                        },
                        child: Container(
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          color: Colors.blue[400],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "7";
                          });
                        },
                        child: Container(
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: 55, color: Colors.black),
                          ),
                          color: Colors.yellow[600],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "8";
                          });
                        },
                        child: Container(
                          child: Text(
                            "8",
                            style: TextStyle(fontSize: 55, color: Colors.black),
                          ),
                          color: Colors.yellow[400],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "9";
                          });
                        },
                        child: Container(
                          child: Text(
                            "9",
                            style: TextStyle(fontSize: 55, color: Colors.black),
                          ),
                          color: Colors.yellow[600],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "*";
                          });
                        },
                        child: Container(
                          child: Text(
                            "x",
                            style: TextStyle(fontSize: 55, color: Colors.black),
                          ),
                          color: Colors.blue[400],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "0";
                          });
                        },
                        child: Container(
                          child: Text(
                            "0",
                            style: TextStyle(fontSize: 55, color: Colors.black),
                          ),
                          color: Colors.yellow[600],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input = " ";
                            xx = "";
                          });
                        },
                        child: Container(
                          child: Text(
                            "AC",
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                          color: Colors.orange[100],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += ".";
                          });
                        },
                        child: Container(
                          child: Text(
                            ".",
                            style: TextStyle(fontSize: 55, color: Colors.black),
                          ),
                          color: Colors.orange[200],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input += "/";
                          });
                        },
                        child: Container(
                          child: Text(
                            "/",
                            style: TextStyle(fontSize: 55, color: Colors.black),
                          ),
                          color: Colors.blue[400],
                          alignment: Alignment.center,
                          height: 70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Parser p = Parser();
                          Expression exp = p.parse(input);
                          ContextModel cm = ContextModel();
                          num eval = exp.evaluate(EvaluationType.REAL, cm);
                          print('Expression: $exp');
                          print(
                              'Evaluated expression: $eval\n  (with context: $cm)');

                          setState(() {
                            xx = '= $eval';
                          });
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "=",
                              style:
                                  TextStyle(fontSize: 55, color: Colors.black),
                            ),
                          ),
                          color: Colors.purple[300],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
