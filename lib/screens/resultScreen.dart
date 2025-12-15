
import 'package:bmi2/Logic/brain_bmi.dart';
import 'package:bmi2/screens/BmiHomeScreen.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Resultscreen extends StatefulWidget {
   Resultscreen({super.key,required this.personAge,required this.personGender,required this.personHeight ,required this.personWeight });


      double? personHeight;
     int? personWeight;
    bool? personGender;
     int? personAge;

  @override
  State<Resultscreen> createState() => _ResultscreenState();
}

class _ResultscreenState extends State<Resultscreen> {
  @override
  Widget build(BuildContext context) {
  BrainBmi brainBmi= BrainBmi(personGender:widget.personGender,personHeight: widget.personHeight,personWeight:widget.personWeight);


    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 40,
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.transparent,
   
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700
          ,letterSpacing: 2,
          fontSize: 20
        ),
        title:Text("BMI CALCULATOR"),
      ),
     
      body: Container(
        height:double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 19, 35, 49),
        padding: EdgeInsets.only(top: 100,left: 20,right: 20),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              width: MediaQuery.of(context).size.width*5,
              
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[Colors.redAccent,Colors.green]),
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              )

              ),
              child: Text("Result",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 50
              ),),
            ),

            Container(
              height: 400,
              width: 400,
              padding:EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white10,
                  
                ),
             
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    Text(brainBmi.getbmiBrefResult(brainBmi.getBmiReasult())[0],
                    style: TextStyle(
                      color:brainBmi.getbmiBrefResult(brainBmi.getBmiReasult())[2]
                      ,fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),),
                    
              //ageC
              Container(
                height: 110,
                width: 300,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius:5,
                      color: const Color.fromARGB(68, 0, 0, 0)
                    )
                  ],
                  borderRadius:BorderRadius.circular(10),
                  color: brainBmi.getbmiBrefResult(brainBmi.getBmiReasult())[2].withOpacity(0.9)
                ),
                child: Column(
                                
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(widget.personGender==true?"Gender: Male":"Gender: Female",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:30
                          ),),
                          // gender
                                Text("Age: ${widget.personAge.toString()}",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:30
                          ),),
                  
                                
                
                  ],
                ),
              ),
              
              Text( brainBmi.getBmiReasult().toStringAsFixed(2),style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize:80
            ),),
                  ],
                   ),
                   
            ),

             
            Text(brainBmi.getbmiBrefResult(brainBmi.getBmiReasult())[1],style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize:20
            ),),

           
              IconButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>BmiScreen()));
               

                
              }, 
              icon:Text("RE-CALCULATE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 3
              ),),
              style:  IconButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10)
                )
                
                
              ),
              
              constraints: BoxConstraints(
                minHeight: 100,
                minWidth: 400
              ),
              )
          ],
        ),
      ),
    );
  }
}