import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About ({super.key});

  @override
  Widget build(BuildContext context) {
    final
      width = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height * 3,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 79, 79, 79) 
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 0,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 6
                ),
              ],
            ),
            height: (MediaQuery.of(context).size.width)/3,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  //height: (MediaQuery.of(context).size.width)/2.25,
                  child: Image.asset("images/logo_banner.jpg" ,
                    fit: BoxFit.fitWidth,
                    )),
                    const Center(
                      child: Text(
                        "About Us",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                          height: 1.33,
                          color: Colors.white,
                          letterSpacing: 2,
                          shadows: [
                            Shadow(
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black,
                              blurRadius: 3.0
                            ),
                            Shadow(
                              offset: Offset(1.5, -1.5),
                              color: Colors.black,
                              blurRadius: 3.0
                            ),
                            Shadow(
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black,
                              blurRadius: 3.0
                            ),
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              color: Colors.black,
                              blurRadius: 3.0
                            ),
                          ],
                        ),
                      ),
                    ),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 0,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 6
                ),
              ],
            ),
            height: (MediaQuery.of(context).size.width)/3.95,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                ),
                const Center(
                  child: Text(
                    "Insert Text Here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      height: 1.33,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 100, 100, 100),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 6,
                ),
              ],
            ),
            height: 450,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: const [
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Ryan McCallum",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    height: 1.33,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Ethan McCallum",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    height: 1.33,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Betsy Beyers" ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    height: 1.33,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}