import 'package:flutter/material.dart';
import 'package:website/widgets/services_text.dart';

class Services extends StatelessWidget {
  const Services ({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height * 3,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 0) 
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
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset("images/logo_banner.jpg" ,
                      fit: BoxFit.fitWidth,
                      ),
                  )),
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
            height: 950,
            width: MediaQuery.of(context).size.width,
            child: Column(children: const [
              ServicesTextFormat(currentText: "A Service"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "B Service"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "All recommended scheduled maintenance services"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Brake pad and rotor replacement"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Brake fluid flushes"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Air and cabin filter replacement"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Cooling system repairs"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Check Engine Light diagnostics"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Electrical troubleshooting"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Suspension repairs"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Window and door repairs"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Fuel system repairs"),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Leak detection and repair (oil, coolant, brake, power steering fluid, vacuum)",
              ),
              ServicesDivider(),
              ServicesTextFormat(currentText: "Transmission Flush"),
            ],)
          ),
        ],
      ),
    );
  }
}
