import 'dart:async';

import 'package:bmi2/screens/BmiHomeScreen.dart';
import 'package:flutter/material.dart';

class BmiFlashScreen extends StatefulWidget {
  const BmiFlashScreen({super.key});

  @override
  State<BmiFlashScreen> createState() {
   return BmiFlashHomeScreen();
  }

}

class BmiFlashHomeScreen extends State<BmiFlashScreen>{

@override
  void initState(){
    super.initState();
 
    Timer(Duration(seconds: 3),
    ()=>Navigator.pushReplacement(
          context,MaterialPageRoute(builder:(context)=> BmiScreen())
    )


    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
body: Center(
  child: AnimatedContainer(
    duration: Duration(seconds: 3),
     curve: Curves.linearToEaseOut,
  
    height: 400,
    alignment: Alignment.center,
    child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text("BMI CALCULATOR",style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color:const Color.fromARGB(255, 20, 50, 75)),),
         Text("Welcome Here...",style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color:Color.fromARGB(255, 48, 50, 53)),),
        
        ],
      ),
    )
    
   ),);

  }
}