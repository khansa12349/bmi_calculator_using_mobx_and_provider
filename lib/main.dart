import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'calculations.dart';
import 'calculator_screen.dart';

void main() {
  runApp(
    Provider<Calculation>(
      create: (_) => Calculation(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorScreen(),
    );
  }
}
