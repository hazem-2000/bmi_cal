import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiCal{
  final int height;
  final int weight;
  double? bmi;

  BmiCal({required this.height,required this.weight}) ;
    double calcuiatBmi() {
      bmi = weight / pow((height / 100), 2);
      return bmi!;
    }
    String getStatues() {
      if (bmi! < 18.5)
        return 'under Weight';
      else if (bmi! > 25)
        return 'over Weight';
      else
        return 'normal';
    }

    Color getStatuesColor() {
      if (bmi! < 18.5)
        return Colors.orange;
      else if (bmi! > 25)
        return Colors.red;
      else
        return Colors.green;
    }

  String getNote() {
    if (bmi! < 18.5)
      return 'eating more\nyou are thinnest';
    else if (bmi! > 25)
      return 'take care\nyou are fat';
    else
      return 'you have a normal body\ngod job';
  }

}