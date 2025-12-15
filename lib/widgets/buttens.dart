import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Buttens extends StatelessWidget {

  const Buttens({
    super.key,
    required this.title,
    required this.callback,
    required this.ismail,
  });
    final bool ismail;
  final String title;
  final VoidCallback callback;


  @override
  Widget build(BuildContext context) {
    Color backgronColors=Colors.redAccent;
     backgronColors=(title =="Male" && ismail==true||title=="Female"&& ismail==false)?Colors.redAccent:Color.fromARGB(255, 35, 59, 78);

    return IconButton(
      onPressed:callback,
      icon: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              title == "Male" ? Icons.male : Icons.female,
              color: Colors.white,
              size: 100,
            ),
            Text(
              title,
              style: TextStyle(
                color: backgronColors==Colors.redAccent?Colors.white:const Color.fromARGB(255, 196, 192, 192),
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
      style: IconButton.styleFrom(
        backgroundColor:backgronColors,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),

      constraints: BoxConstraints(maxWidth:MediaQuery.of(context).size.height*0.2,
          maxHeight: 180),
    );
  }
}
