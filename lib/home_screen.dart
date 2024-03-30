import 'package:calculator_app/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var userInput = '';
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        userInput.toString(),
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        result.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            MYButton(
                              title: 'AC',
                              onPress: () {
                                userInput = '';
                                result = '';
                                setState(() {});
                              },
                            ),
                            MYButton(
                              title: '+/-',
                              onPress: () {
                                userInput += '+/-';
                                setState(() {});
                              },
                            ),
                            MYButton(
                              title: '%',
                              onPress: () {
                                userInput += '%';
                                setState(() {});
                              },
                            ),
                            MYButton(
                                title: '/',
                                color: Color(0xffffa00a),
                                onPress: () {
                                  userInput += '/';
                                  setState(() {});
                                }),
                          ],
                        ),
                        Row(
                          children: [
                            MYButton(
                              title: '7',
                              onPress: () {
                                userInput += '7';
                                setState(() {});
                              },
                            ),
                            MYButton(
                              title: '8',
                              onPress: () {
                                userInput += '8';
                                setState(() {});
                              },
                            ),
                            MYButton(
                                title: '9',
                                onPress: () {
                                  userInput += '9';
                                  setState(() {});
                                }),
                            MYButton(
                                title: 'x',
                                color: Color(0xffffa00a),
                                onPress: () {
                                  userInput += 'x';
                                  setState(() {});
                                }),
                          ],
                        ),
                        Row(
                          children: [
                            MYButton(
                              title: '4',
                              onPress: () {
                                userInput += '4';
                                setState(() {});
                              },
                            ),
                            MYButton(
                              title: '5',
                              onPress: () {
                                userInput += '5';
                                setState(() {});
                              },
                            ),
                            MYButton(
                                title: '6',
                                onPress: () {
                                  userInput += '6';
                                  setState(() {});
                                }),
                            MYButton(
                                title: '-',
                                color: Color(0xffffa00a),
                                onPress: () {
                                  userInput += '-';
                                  setState(() {});
                                }),
                          ],
                        ),
                        Row(
                          children: [
                            MYButton(
                              title: '1',
                              onPress: () {
                                userInput += '1';
                                setState(() {});
                              },
                            ),
                            MYButton(
                              title: '2',
                              onPress: () {
                                userInput += '2';
                                setState(() {});
                              },
                            ),
                            MYButton(
                                title: '3',
                                onPress: () {
                                  userInput += '3';
                                  setState(() {});
                                }),
                            MYButton(
                                title: '+',
                                color: Color(0xffffa00a),
                                onPress: () {
                                  userInput += '+';
                                  setState(() {});
                                }),
                          ],
                        ),
                        Row(
                          children: [
                            MYButton(
                              title: '0',
                              onPress: () {
                                userInput += '0';
                                setState(() {});
                              },
                            ),
                            MYButton(
                              title: '.',
                              onPress: () {
                                userInput += '.';
                                setState(() {});
                              },
                            ),
                            MYButton(
                                title: 'DEL',
                                onPress: () {
                                  userInput = userInput.substring(
                                      0, userInput.length - 1);
                                  setState(() {});
                                }),
                            MYButton(
                                title: '=',
                                color: Color(0xffffa00a),
                                onPress: () {
                                  equalPress();
                                  setState(() {});
                                }),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    String finalInput = userInput;
    userInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
  }
}
