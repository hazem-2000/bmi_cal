import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi calculator.dart';

class ResultScreen extends StatelessWidget {
  final height;
  final weight;
  ResultScreen(int this.height, int this.weight);
  




  @override
  Widget build(BuildContext context) {
    

    BmiCal bmiCal=BmiCal(height: height, weight: weight);
    bmiCal.calcuiatBmi();

    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('Your Result',style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,


            ),),

          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    width: 350,
                    height: 550,
                    color: Color.fromARGB(255, 47, 50, 82),
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('${bmiCal.getStatues()}',style: TextStyle(fontSize:25 ,color: bmiCal.getStatuesColor()),),
                          Text('${bmiCal.bmi!.toStringAsFixed(1)}',style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
                          Text('Normal Bmi range:\n18.5 - 25 kg/m2',style: TextStyle(fontSize:25 ),),
                          Text('${bmiCal.getNote()}',style: TextStyle(fontSize:25 ),),


                        ],

                      ),
                    )
                  ),
                ),
                Spacer(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: Colors.pink,
                        height: 50,
                        child: Text(
                          'RE-calculate your bmi'.toUpperCase(),
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

}
