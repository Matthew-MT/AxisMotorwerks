import 'package:flutter/material.dart';
import 'package:website/widgets/google_maps.dart';
import '../widgets/text_modifier.dart';
import '../widgets/banner_page.dart';
import '../widgets/email_form.dart';

class Contact extends StatelessWidget {
  final double appBarHeight;
  const Contact({required this.appBarHeight, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BannerPage(
      appBarHeight: appBarHeight,
      bannerSource: "images/porsche.jpg",
      bannerText: "Contact Us",
      children: <Widget>[
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
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.repeatY,
                    image: AssetImage("images/carbonfiber.png"),
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
            color: const Color.fromARGB(255, 235, 235, 235),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.5),
                spreadRadius: 6,
                blurRadius: 6,
              ),
            ],
          ),
          height: 450,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [ 
              const SizedBox(
                height: 50
              ),
              Center(
                child: Text(
                  "HOW TO CONTACT US",
                  style: basicHeaderStyle.copyWith(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
              ),
              const SizedBox(
                height: 30
              ),
              headerDivider(width, 32),
              const SizedBox( 
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "HOURS : Monday - Friday , 8am - 5pm",
                    textAlign: TextAlign.center,
                    style: basicContentStyle,
                  ),
                  VerticalDivider( 
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Text(
                    "PHONE : 970-433-7111",
                    textAlign: TextAlign.center,
                    style: basicContentStyle,
                  ),
                  VerticalDivider( 
                    color: Colors.black,
                    thickness: 5,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Text(
                    "EMAIL : axismotorwerks@gmail.com" ,
                    textAlign: TextAlign.center,
                    style: basicContentStyle,
                  ),
                ],
              ),
              const SizedBox( 
                height: 40,
              ),
              headerDivider(width, 32),
              const SizedBox( 
                height: 40,
              ),
              const Center(
                child: Text(
                    "If it is after hours, please fill out the form below and we will get back to you as soon as possible.",
                    textAlign: TextAlign.center,
                    style: basicContentStyle,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        //const GoogleMaps(),
        Container(
          color: const Color.fromARGB(255, 235, 235, 235),      
          width: MediaQuery.of(context).size.width,
          child: emailForm(),
        ),
      ],
    );
  }
}
