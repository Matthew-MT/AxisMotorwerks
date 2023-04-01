import 'package:flutter/material.dart';

class Pricing extends StatelessWidget {
  const Pricing ({super.key});

  @override
  Widget build(BuildContext context) {
    final
      width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
            const Color.fromARGB(255, 252, 47, 47).withOpacity(0.5),
            const Color.fromARGB(255, 255, 255, 92).withOpacity(0.5),
          ],
        ),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: width / 32,
            ),
            height: 120,
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.7),
            child: const Text(
              "Pricing",
              textAlign: TextAlign.center,
            
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 80,
                height: 1.33,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
