import 'package:flutter/material.dart';

class Pricing extends StatelessWidget {
  const Pricing ({super.key});

  @override
  Widget build(BuildContext context) {
    final
      width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(
        left: width > 1024 ? (width - 1024) / 4 : 0,
        right: width > 1024 ? (width - 1024) / 4 : 0,
      ),
      padding: EdgeInsets.all(width / 16),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
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
          Text("Lorem ipsum dolor sit amet"),
        ]
      ),
    );
  }
}
