//total inch =fit *12 + inch
//cm = total inch * 2.54

import 'package:flutter/material.dart';

class BrainBmi {
  double? personHeight;
  int? personWeight;
  bool? personGender;
  int? personAge;

  BrainBmi({
    required this.personHeight,
    required this.personWeight,
    required this.personGender,
  });

  double getBmiReasult() {
    //meeter = cm/100
    //bmi =  weigth / meeter * meeter
    // BMI = Weight (kg) / (Height (m))²

    var heightInCm = personHeight;
    var weight = personWeight;
    var heightInMeeter = heightInCm! / 100;
    double bmiResult = weight! / (heightInMeeter * heightInMeeter);

    return bmiResult;
  }

  List getbmiBrefResult(double bmiResulttest) {
    var bR = bmiResulttest;

    if (bR < 18.5) {
      return ["Underweight","Your BMI is lower than ideal. Consider a nutritious, calorie-rich diet and healthy weight-gain routine.",const Color.fromARGB(255, 255, 174, 0)];
    } else if (bR >= 18.5 && bR <= 24.9) {
      return ["Healthy","Great job! Your BMI is in the healthy range. Keep maintaining your balanced lifestyle.",Colors.green];
    } else if (bR >= 25.0 && bR <= 29.9) {
      return ["Overweight" ,"Your BMI is slightly above the healthy range. A little more activity and mindful eating can help.",const Color.fromARGB(255, 88, 26, 233)];
    } else {
      return ["Obesity","You have obesity",const Color.fromARGB(255, 255, 17, 0)];
    }
  }

  
   
   


}
