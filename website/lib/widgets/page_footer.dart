import 'package:flutter/material.dart';
import 'text_modifier.dart';


Container footer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 0,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
            spreadRadius: 15,
            blurRadius: 20
          ),
        ],
      ),
      height: (MediaQuery.of(context).size.width)/6,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Image.asset("images/carbonfiber.png" ,
              fit: BoxFit.fitWidth,
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "©2023 All Rights Reserved | Privacy Policy",
              ),

            ],
          ),
        ],
      ),
    );
    }