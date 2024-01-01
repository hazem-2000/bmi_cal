
import 'package:bmi_cal/result%20Screen.dart';
import 'package:flutter/cupertino.dart';
import 'MainContainer.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'button.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  int height = 180;
  int weight = 70;
  int age = 18;






  incrementWeight() {
    setState(() {
      weight += 1;
    });
  }

  decrementWeight() {
    setState(() {
      weight -= 1;
    });
  }

  decrementAge() {
    setState(() {
      age -= 1;
    });
  }

  incrementAge() {
    setState(() {
      age += 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          elevation: 20,
          title: Text('bmi calculator'.toUpperCase()),
          centerTitle: true,
          leading: Icon(Icons.format_align_left_sharp),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              active = active == Colors.white
                                  ? Colors.white38
                                  : Colors.white;
                              inactive = inactive == Colors.white38
                                  ? Colors.white
                                  : Colors.white38;
                              a = a == Colors.white
                                  ? Colors.white38
                                  : Colors.white;
                              b = b == Colors.white38
                                  ? Colors.white38
                                  : Colors.white38;
                            });
                          },
                          child: MainContainer(
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 70,
                                    color: inactive,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'MALE',
                                    style: TextStyle(
                                        fontSize: 30, color: inactive),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              a = a == Colors.white
                                  ? Colors.white38
                                  : Colors.white;
                              b = b == Colors.white38
                                  ? Colors.white
                                  : Colors.white38;
                              active = active == Colors.white
                                  ? Colors.white38
                                  : Colors.white;
                              inactive = inactive == Colors.white38
                                  ? Colors.white38
                                  : Colors.white38;
                            });
                          },
                          child: MainContainer(
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 70,
                                    color: b,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'FEMALE',
                                    style: TextStyle(fontSize: 30, color: b),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: MainContainer(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: textStyle,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              '$height',
                              style: numStyle,
                            ),
                            Text(
                              'cm',
                              style: textStyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.pink,
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.white38,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15),
                          ),
                          child: Slider(
                              max: 220,
                              min: 120,
                              value: height.toDouble(),
                              onChanged: (double newHeight) {
                                setState(() {
                                  height = newHeight.toInt();
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: MainContainer(
                          child: Column(
                            children: [
                              Text(
                                'WEIGHT',
                                style: textStyle,
                              ),
                              Text(
                                '$weight',
                                style: numStyle,
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    button(Icons.add, incrementWeight),
                                    button(Icons.remove, decrementWeight),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: MainContainer(
                          child: Column(
                            children: [
                              Text(
                                'AGE',
                                style: textStyle,
                              ),
                              Text(
                                '$age',
                                style: numStyle,
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    button(Icons.add, incrementAge),
                                    button(Icons.remove, decrementAge),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ResultScreen(height,weight);
                    },
                  ));
                },
                color: Colors.pink,
                height: 50,
                child: Text(
                  'calculate your bmi'.toUpperCase(),
                  style: TextStyle(fontSize: 25),
                ),
              ),


            ],
          ),
        ));
  }
}
