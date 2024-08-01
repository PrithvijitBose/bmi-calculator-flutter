import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor:
               Color(0xFF0A0E21), // Set the AppBar color explicitly
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor:
              const Color(0xFFEB1555), // Set the FAB color explicitly
        ),
        textTheme: const TextTheme(
          bodyMedium:
              TextStyle(color: Colors.white), // Use bodyText1 instead of body1
        ),
      ),
      home: InputPage(),
    );
  }
}

