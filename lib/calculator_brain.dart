import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height, // Height in centimeters
    required this.weight, // Weight in kilograms
  });

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    // Convert height to meters
    double heightInMeters = height / 100;
    _bmi = weight / pow(heightInMeters, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You should eat more!';
    }
  }
}
