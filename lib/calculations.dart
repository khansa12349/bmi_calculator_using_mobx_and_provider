import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'calculations.g.dart';

class Calculation = Calculations with _$Calculation;

abstract class Calculations with Store {


  @observable
  double result = 0;

  TextEditingController heightController = TextEditingController();

  TextEditingController weightController = TextEditingController();


  @action
  calculationsBMI() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);
    double heightSquare = height * height;
    result = weight / heightSquare;
  }
}