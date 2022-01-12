import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = "";
  ContextModel cm = ContextModel();
  String problem = "";
  Color bgColor1 = const Color(0xff22252e);
  Color bgColor2 = const Color(0xff292d36);
  Color buttonColor = const Color(0xff272b34);
  Color textColor = const Color(0xffffffff);
  Color textColor2 = const Color(0xffffffff);
  Color textColor3 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: bgColor1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  width: 80.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: bgColor2,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () => {
                            setState(() {
                              bgColor1 = const Color(0xffffffffff);
                              bgColor2 = const Color(0xfff9f9f9);
                              buttonColor = const Color(0xffeeeeee);
                              textColor = const Color(0xff2e3034);
                              textColor2 = Colors.grey;
                              textColor3 = const Color(0xff2e3034);
                            })
                          },
                          child: Icon(
                            Icons.brightness_low_rounded,
                            color: textColor3,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () => {
                            setState(() {
                              bgColor1 = const Color(0xff22252e);
                              bgColor2 = const Color(0xff292d36);
                              buttonColor = const Color(0xff272b34);
                              textColor = const Color(0xffffffff);
                              textColor2 = const Color(0xffffffff);
                              textColor3 = Colors.grey;
                            })
                          },
                          child: Icon(
                            Icons.brightness_2_outlined,
                            color: textColor2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 304,
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            problem,
                            style: TextStyle(
                              color: textColor,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                color: bgColor2,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem = "";
                              }),
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: const Center(
                                  child: Text(
                                    "AC",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff59ddc3),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "%";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: const Center(
                                  child: Text(
                                    "Mod",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff59ddc3),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                if (problem.isNotEmpty) {
                                  problem =
                                      problem.substring(0, problem.length - 1);
                                }
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: const Center(
                                  child: Text(
                                    "Del",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff59ddc3),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "/";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: const Center(
                                  child: Text(
                                    "/",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffc46a6b),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "7";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    "7",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "8";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    "8",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "9";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    "9",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "*";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: const Center(
                                  child: Text(
                                    "x",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffc46a6b),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "4";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    "4",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "5";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "6";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    "6",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "-";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: const Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffc46a6b),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "1";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "2";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "3";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "+";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: const Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffc46a6b),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem = "";
                              }),
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Icon(
                                    Icons.refresh,
                                    size: 26.0,
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += "0";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              setState(() {
                                problem += ".";
                              })
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: Center(
                                  child: Text(
                                    ".",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              try {
                                Parser p = Parser();
                                Expression exp = p.parse(problem);
                                result = exp
                                    .evaluate(EvaluationType.REAL, cm)
                                    .toString();
                              } catch (e) {
                                result = "Math error";
                              }
                              setState(() {
                                problem = result;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: buttonColor,
                                child: const Center(
                                  child: Text(
                                    "=",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffc46a6b),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
