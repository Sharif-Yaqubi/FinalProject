// ignore_for_file: unused_import

import 'dart:math';

import 'package:final_project/components/gender_component.dart';
import 'package:final_project/components/height_component.dart';
import 'package:final_project/components/result_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';
import 'package:final_project/components/age_component.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({Key key}) : super(key: key);

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  int _gender = 0;
  int _height = 150;
  int _age = 50;
  int _width = 50;
  bool _isFinished = false;
  double _bmiScore = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('محاسبه وزن💪'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 12.0,
            shape: RoundedRectangleBorder(),
            child: Column(
              children: [
                Gender(onChange: (genderValue) {
                  _gender = genderValue;
                }),
                Height(onChange: (value) {
                  _height = value;
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Age(
                      onChange: (value) {
                        _age = value;
                      },
                      max: 100,
                      min: 0,
                      initValue: 30,
                      title: 'سن',
                    ),
                    Age(
                      onChange: (value) {
                        _width = value;
                      },
                      max: 200,
                      min: 0,
                      initValue: 50,
                      title: 'وزن (KG)',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 60),
                  child: SwipeableButtonView(

                    isFinished: _isFinished,
                    onFinish: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                            child: Result(
                              bmiScore: _bmiScore,
                              age: _age,
                            ),
                            type: PageTransitionType.fade),
                      );
                      setState(() {
                        _isFinished = false;
                      });
                    },
                    onWaitingProcess: () {
                      calculateBmi();
                      Future.delayed(Duration(seconds: 1), () {
                        setState(() {
                          _isFinished = true;
                        });
                      });
                    },
                    activeColor: Colors.purple,
                    buttonWidget: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                    buttonText: 'محاسبه',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculateBmi() {
    _bmiScore = _width / pow(_height / 100, 2);
  }
}
