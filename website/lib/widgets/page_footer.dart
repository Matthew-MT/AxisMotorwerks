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
      height: (MediaQuery.of(context).size.width)/8,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "©2023 All Rights Reserved | Privacy Policy",
                  style: basicContentStyle.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Footer Content",
                  style: basicContentStyle.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "More Footer Content",
                  style: basicContentStyle.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    }