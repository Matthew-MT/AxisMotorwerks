import 'package:flutter/material.dart';


class Services extends StatelessWidget {
  const Services ({super.key});

  @override
  Widget build(BuildContext context) {
    final
      width = MediaQuery.of(context).size.width;
    return Container(
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
            height: (MediaQuery.of(context).size.width)/3.95,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Image.asset("images/banner.jpg" , fit: BoxFit.cover)),
                const Center(
                  child: Text(
                    "Services",
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
                    "We offer a wide range of services to meet your needs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
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
            margin: const EdgeInsets.only(
              top: 0,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 6,
                ),
              ],
            ),
            height: 800,
            width: MediaQuery.of(context).size.width,
            child: Column(children: const [
              Text(
                "...",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  height: 1.66,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ],)
          ),
        ],
      ),
    );
  }
}
