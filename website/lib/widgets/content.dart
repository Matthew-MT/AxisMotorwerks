import 'package:flutter/material.dart';
import '../widgets/text_modifier.dart';

Container contentWithImage(BuildContext context, String description, String name, Image image, double h) {
  return Container(
    color: const Color.fromARGB(255, 235, 235, 235),
    height: h,
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
              fontSize: 32,
              fontWeight: FontWeight.bold,
              //decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              textAlign: TextAlign.start,
              style: basicContentStyle.copyWith(fontSize: 14),
              maxLines: 14,
            ),
          ],
        ),
      ],
    ),
  );
}