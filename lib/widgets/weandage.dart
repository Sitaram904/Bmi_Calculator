import 'package:flutter/material.dart';

class Weandage extends StatelessWidget {
  final int k;
  final String title;
  final String indStr;
  final VoidCallback addFunction;
  final VoidCallback subFunction;

  const Weandage({
    super.key,
    required this.title,
    required this.indStr,
    required this.k,
    required this.addFunction,
    required this.subFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height*0.2,
      width:MediaQuery.of(context).size.height*0.2,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 35, 59, 78),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
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
                  text: k.toStringAsFixed(0),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),

                TextSpan(
                  text: indStr,
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

          // circularbuttonsection
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed:addFunction,
               
                icon: Icon(
                  Icons.arrow_left,
                  size: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                style: IconButton.styleFrom(backgroundColor: Colors.blueGrey),
                constraints: BoxConstraints(maxHeight: 80, maxWidth: 80),
              ),
              SizedBox(width: 10),

              // b2
              IconButton(
                onPressed:subFunction,
              
                icon: Icon(
                  Icons.arrow_right,
                  size: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                style: IconButton.styleFrom(backgroundColor: Colors.blueGrey),
                constraints: BoxConstraints(maxHeight: 80, maxWidth: 80),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
