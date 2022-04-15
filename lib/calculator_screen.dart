import 'package:bmi_cal/calculations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'calculations.dart';




class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();

}

class _CalculatorScreenState extends State<CalculatorScreen> {

  @override

  Widget build(BuildContext context) {
    final store = context.read<Calculation>();


    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator Using mobX'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding:  const EdgeInsets.only(left:24,right: 24),
        child: Column(children: [

            TextField(
             controller: store.heightController,
             keyboardType: TextInputType.number,
             decoration: const InputDecoration(
               labelText: 'Height in cm',
               icon: Icon(Icons.trending_up),
             ),
           ),

          const SizedBox(height: 20),


             TextField(
              controller: store.weightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Weight in kg',
                icon: Icon(Icons.line_weight),
              ),
            ),


          const SizedBox(height: 100),


             TextButton(
                  child: const Text(
                  "Calculate",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.pink),
                ),
                onPressed: () {
                  store.calculationsBMI();
                }
            ),


             const SizedBox(height: 15),
             Observer(
             builder: (_) {
               // final store = context.read<Calculation>();
               return Text(
                 store.result == null
                     ? " "
                     : store.result.toStringAsFixed(2),
                 style: const TextStyle(
                   color: Colors.redAccent,
                   fontSize: 20,
                   fontWeight: FontWeight.w500,
                 ),
               );

             }
          ),
          Observer(
          builder: (_) {

           return store.result < 18.5
                ? const Text("show results")
                : store.result > 18.5 && store.result < 24.9
                ? const Text("BMI is normal")
                : const Text("You are overweight");
          }
          ),
        ]),
      ),
    );
  }
}












