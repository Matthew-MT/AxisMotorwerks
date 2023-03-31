import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About ({super.key});

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
              "About Us",
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
          Container(
            margin: EdgeInsets.only(
              top: width / 32,
            ),
            height: 160,
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.7),
            child: const Text(
              "We are officially open for your business! Ryan McCallum, Owner and Lead Tech, has over 20 years maintaining and repairing European, German, and Japanese vehicles. BMW, Mini Cooper, Mercedes Benz, Porsche, Audi, VW, Land Rover, Volvo, Lexus, and Toyota - We got you covered with competitive rates and friendly, professional service.  Come by and check us out at 1st & North Ave in Grand Junction, CO.",
              textAlign: TextAlign.center,
            
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                height: 1.66,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/**
 padding: EdgeInsets.all(width / 16),
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
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                spreadRadius: 20,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
 */