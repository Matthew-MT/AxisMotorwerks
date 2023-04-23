import 'package:flutter/material.dart';
import 'package:website/widgets/google_maps.dart';
import '../widgets/banner_page.dart';
import '../widgets/email_form.dart';

class Contact extends StatelessWidget {
  final double appBarHeight;
  const Contact({required this.appBarHeight, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print(width);
    return BannerPage(
      appBarHeight: appBarHeight,
      bannerSource: "images/porsche.jpg",
      bannerText: "Contact Us",
      //scrollDirection: Axis.vertical,
      children: <Widget>[
        /*
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
          height: (MediaQuery.of(context).size.width)/3.5,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 112, 112, 112),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                      spreadRadius: 6,
                      blurRadius: 6
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                //height: (MediaQuery.of(context).size.width)/2.25,
                child: Opacity(
                  opacity: 0.5,
                  child: Image.asset("images/porsche.jpg" ,
                    fit: BoxFit.fitWidth,
                    ),
                )),
                  const Center(
                    child: Text(
                      "Contact Us",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                        height: 1.33,
                        color: Colors.white,
                        letterSpacing: 2,
                        shadows: [
                          Shadow(
                            offset: Offset(-2, -2),
                            color: Colors.black,
                            blurRadius: 3.0
                          ),
                          Shadow(
                            offset: Offset(2, -2),
                            color: Colors.black,
                            blurRadius: 3.0
                          ),
                          Shadow(
                            offset: Offset(-2, 2),
                            color: Colors.black,
                            blurRadius: 3.0
                          ),
                          Shadow(
                            offset: Offset(2, 2),
                            color: Colors.black,
                            blurRadius: 3.0
                          ),
                        ],
                      ),
                    ),
                  ),
            ],
          )
        ),*/
        Container(
          margin: const EdgeInsets.only(
            top: 0,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 5),
                color: const Color.fromARGB(255, 255, 255, 255)
                  .withOpacity(0.5),
                spreadRadius: 20,
                blurRadius: 20,
              ),
            ],
          ),
          // height: (MediaQuery.of(context).size.width) / 3.95,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            // fit: StackFit.expand,
            children: <Widget>[
              // SizedBox(
              //   width: MediaQuery.of(context).size.width,
              //   child: 
              // ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.repeatY,
                    image: AssetImage("images/carbonfiber.png"),
                    //  Image.asset(
                    //   "images/carbonfiber.png",
                    //   fit: BoxFit.fitWidth,
                    //   repeat: ImageRepeat.repeatY,
                    // ),
                  ),
                ),
                child: Center(
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      const Text(
                        "We are located at \n 1105 North 1st Street, \n Grand Junction, CO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 32,
                          height: 1.33,
                          color: Color.fromARGB(255, 255, 255, 255),
                          letterSpacing: 2,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          "images/map.png",
                          colorBlendMode: BlendMode.lighten,
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 2.25,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 200, 200, 200),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.5),
                spreadRadius: 6,
                blurRadius: 6,
              ),
            ],
          ),
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Row(
                children: const [
                  SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    child: Text(
                      "HOURS : Monday - Friday , 8am - 5pm",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(-2, -2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                          Shadow(
                            offset: Offset(2, -2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                          Shadow(
                            offset: Offset(-2, 2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                          Shadow(
                            offset: Offset(2, 2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        height: 1.33,
                        color: Color.fromARGB(255, 255, 255, 255),
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 20,
                    thickness: 5,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Expanded(
                    child: Text(
                      "PHONE : 970-433-7111",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(-2, -2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                          Shadow(
                            offset: Offset(2, -2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                          Shadow(
                            offset: Offset(-2, 2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                          Shadow(
                            offset: Offset(2, 2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        height: 1.33,
                        color: Color.fromARGB(255, 255, 255, 255),
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 20,
                    thickness: 5,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Expanded(
                    child: Text(
                      "EMAIL : axismotorwerks@gmail.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(-2, -2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                          Shadow(
                            offset: Offset(2, -2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                          Shadow(
                            offset: Offset(-2, 2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                          Shadow(
                            offset: Offset(2, 2),
                            color: Colors.black,
                            blurRadius: 3.0,
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        height: 1.33,
                        color: Color.fromARGB(255, 255, 255, 255),
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const Center(
                child: Text(
                  "If it is after hours, please fill out the form below and we will get back to you as soon as possible.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        offset: Offset(-2, -2),
                        color: Colors.black,
                        blurRadius: 3.0,
                      ),
                      Shadow(
                        offset: Offset(2, -2),
                        color: Colors.black,
                        blurRadius: 3.0,
                      ),
                      Shadow(
                        offset: Offset(-2, 2),
                        color: Colors.black,
                        blurRadius: 3.0,
                      ),
                      Shadow(
                        offset: Offset(2, 2),
                        color: Colors.black,
                        blurRadius: 3.0,
                      ),
                    ],
                    fontSize: 28,
                    height: 1.33,
                    color: Color.fromARGB(255, 255, 255, 255),
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        //const GoogleMaps(),
        Container(
          color: const Color.fromARGB(255, 200, 200, 200),
          width: MediaQuery.of(context).size.width,
          child: emailForm(),
        )
      ],
      //),
    );
  }
}
