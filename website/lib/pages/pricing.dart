import 'package:flutter/material.dart';

class Pricing extends StatelessWidget {
  const Pricing ({super.key});

  @override
  Widget build(BuildContext context) {
    final
      width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(width / 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                    Color.fromARGB(255, 252, 47, 47).withOpacity(0.5),
                    Color.fromARGB(255, 255, 255, 92).withOpacity(0.5),
                  ],
                ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
            spreadRadius: 20,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Icon(Icons.home),
          Icon(Icons.leaderboard),
          Icon(Icons.local_offer),
          Text("Lorem ipsum dolor sit amet", style: TextStyle(fontSize: 20.0),),
        ]
      ),
    );
  }
}
