import 'package:flutter/material.dart';
import '../widgets/text_modifier.dart';
import '../widgets/banner_page.dart';


class About extends StatelessWidget {
  const About ({super.key});

  @override
  Widget build(BuildContext context) {
    final
      width = MediaQuery.of(context).size.width;
    return BannerPage(
        bannerSource: "images/porsche.jpg",
        bannerText: "About Us",
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 0,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  spreadRadius: 20,
                  blurRadius: 20
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
                  child: Image.asset("images/carbonfiber.png" ,
                    fit: BoxFit.fitWidth,
                    ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [ 
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 4
                        ),
                      ],
                    ),
                    child: const Text("Insert image here"),
                  ),
                    const SizedBox(
                      width: 200,
                    ),
                    const Center(
                      child: Text(
                        "Ryan McCallum\n...",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Swiss",
                          fontSize: 32,
                          height: 1.33,
                          color: Color.fromARGB(255, 255, 255, 255),
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 0,
            ),
            height: (MediaQuery.of(context).size.width)/3.95,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [ 
                    const Center(
                      child: Text(
                        "Ethan McCallum\n...",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Swiss",
                          fontSize: 32,
                          height: 1.33,
                          color: Color.fromARGB(255, 255, 255, 255),
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 4
                        ),
                      ],
                    ),
                    child: const Text("Insert image here"),
                  ),
                  ],
                ),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 0,
            ),
            height: (MediaQuery.of(context).size.width)/3.95,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [ 
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 4
                        ),
                      ],
                    ),
                    child: const Text("Insert image here"),
                  ),
                    const SizedBox(
                      width: 200,
                    ),
                    const Center(
                      child: Text(
                        "Claudia McCallum\n...",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Swiss",
                          fontSize: 32,
                          height: 1.33,
                          color: Color.fromARGB(255, 255, 255, 255),
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 0,
            ),
            height: (MediaQuery.of(context).size.width)/3.95,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [ 
                    const Center(
                      child: Text(
                        "Betsy Beyers\n...",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Swiss",
                          fontSize: 32,
                          height: 1.33,
                          color: Color.fromARGB(255, 255, 255, 255),
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 4
                        ),
                      ],
                    ),
                    child: const Text("Insert image here"),
                  ),
                  ],
                ),
              ],
            )
          ),
        ],
    );
  }
}
