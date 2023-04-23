import 'package:flutter/material.dart';
import '../widgets/text_modifier.dart';

Container description(BuildContext context, String description, String name, Image image) {
  return Container(
    color: const Color.fromARGB(255, 235, 235, 235),
    height: 300,
    width: MediaQuery.of(context).size.width,
    child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [ 
          Container(
            margin: const EdgeInsets.all(16),
            child: const Text("Insert image here",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                textAlign: TextAlign.center,
                style: basicContentStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                description,
                textAlign: TextAlign.center,
                style: basicContentStyle.copyWith(fontSize: 16),
                maxLines: 10,
              ),
            ],
          ),
        ],
      ),
  );
}

Container descriptionSwap(BuildContext context, String description, String name, Image image) {
  return Container(
    color: const Color.fromARGB(255, 225, 225, 225),
    height: 300,
    width: MediaQuery.of(context).size.width,
    child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [ 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.start,
                    style: basicContentStyle,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                    description,
                    textAlign: TextAlign.start,
                    style: basicContentStyle.copyWith(fontSize: 12),
                  ),
              ],
            ),
          Container(
            margin: const EdgeInsets.all(16),
            child: const Text("Insert image here",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
          ),
          ],
        ),
  );
}