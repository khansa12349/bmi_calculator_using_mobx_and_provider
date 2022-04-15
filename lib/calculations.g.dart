// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculations.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Calculation on Calculations, Store {
  final _$resultAtom = Atom(name: 'Calculations.result');

  @override
  double get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(double value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  final _$heightControllerAtom = Atom(name: 'Calculations.heightController');

  @override
  TextEditingController get heightController {
    _$heightControllerAtom.reportRead();
    return super.heightController;
  }

  @override
  set heightController(TextEditingController value) {
    _$heightControllerAtom.reportWrite(value, super.heightController, () {
      super.heightController = value;
    });
  }

  final _$CalculationsActionController = ActionController(name: 'Calculations');

  @override
  dynamic calculationsBMI() {
    final _$actionInfo = _$CalculationsActionController.startAction(
        name: 'Calculations.calculationsBMI');
    try {
      return super.calculationsBMI();
    } finally {
      _$CalculationsActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
result: ${result},
heightController: ${heightController}
    ''';
  }
}
