import 'package:bmi2/screens/resultScreen.dart';
import 'package:bmi2/widgets/buttens.dart';
import 'package:bmi2/widgets/weandage.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => BmiHomeScreen();
}

class BmiHomeScreen extends State<BmiScreen> {
  bool ismails = true;
  var age = 20;
  var weight = 50;
  int vk = 0;
  double heights = 157;

  void addSupOnClick(String whichButton) {
    switch (whichButton) {
      case 'W+':
        weight--;
        break;
      case 'W-':
        weight++;
        break;
      case 'A+':
        age--;
        break;
      case 'A-':
        age++;
        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading:Icon(Icons.smart_button,color: Colors.redAccent,size:40,),
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: Colors.transparent,
        actions: [
          Text(
            "CONTACT:+977 9818268332   ",
            style: TextStyle(color: Colors.grey),
          ),
        ],
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        color: const Color.fromARGB(255, 19, 39, 46),
        padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Buttens(
                  title: "Male",
                  ismail: vk == 1 ? ismails : false,
                  callback: () {
                    setState(() {
                      ismails = true;
                      vk = 1;
                    });
                  },
                ),
                Buttens(
                  title: "Female",
                  ismail: ismails,
                  callback: () {
                    setState(() {
                      ismails = false;
                    });
                  },
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 59, 78),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: heights.toStringAsFixed(2),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                          ),
                        ),

                        TextSpan(
                          text: " cm",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 185, 184, 184),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // slider
                  SliderTheme(
                    data: SliderTheme.of(context),

                    child: Slider(
                      value: heights,
                      inactiveColor: const Color.fromARGB(255, 117, 116, 116),
                      min: 1,

                      max: 300,
                      thumbColor: Colors.redAccent,
                      activeColor: const Color.fromARGB(255, 255, 129, 79),
                      divisions: 100,
                      onChanged: (sValue) {
                        setState(() {
                          heights = sValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            // next section
            Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Weandage(
                    title: "WEIGHT",
                    indStr: "kg",
                    k: weight,
                    addFunction: () {
                      addSupOnClick('W+');
                    },
                    subFunction: () {
                      addSupOnClick('W-');
                    },
                  ),
                  Weandage(
                    title: "AGE",
                    indStr: "yrs",
                    k: age,
                    addFunction: () {
                      addSupOnClick('A+');
                    },
                    subFunction: () {
                      addSupOnClick('A-');
                    },
                  ),
                ],
              ),
            ),

            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultscreen(
                      personAge: age,
                      personGender: ismails,
                      personHeight:heights,
                      personWeight: weight,

                    ),
                  
                  
                  ),
                  
                );
              },
              icon: Text(
                "CALCULATE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              style: IconButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),

              constraints: BoxConstraints(minHeight: 100, minWidth: 400),
            ),
          ],
        ),
      ),
    );
  }
}
