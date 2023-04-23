import 'package:flutter/material.dart';
import 'package:website/widgets/content.dart';
import '../widgets/banner_page.dart';
import '../widgets/reviews.dart';
import '../widgets/car_display.dart';
import '../widgets/text_modifier.dart';

class Homepage extends StatelessWidget {
  final double appBarHeight;
  const Homepage({required this.appBarHeight, super.key});

  
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BannerPage(
      appBarHeight: appBarHeight,
      bannerSource: "images/hommage.jpg",
      bannerText: "AXIS MotorWerks",
      children: [
        Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  spreadRadius: 20,
                  blurRadius: 20
                ),
              ],
            ),
            height: (MediaQuery.of(context).size.width)/6,
            width: MediaQuery.of(context).size.width,
            child: Material(
              elevation: 15,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Image.asset("images/carbonfiber.png" ,
                      fit: BoxFit.fitWidth,
                      ),
                  ),
                  const Center(
                    child: Text(
                      "THE GRAND VALLEY'S PREMIER EUROPEAN & JAPENESE VEHICLE SPECIALIST",
                      textAlign: TextAlign.center,
                      style: basicHeaderStyle,
                    ),
                  ),
                ],
              ),
            )
          ),
        contentWithImage(context, 
        """
        We are a family-owned & operated independent European & Japanese auto repair 
        shop centrally located in Grand Junction, CO servicing the Western Slope and 
        Moab, UT. Instead of trying to take our customers money, we focus on helping 
        you to keep your vehicle safe and running well. Our priority is ensuring the 
        satisfaction of every customer by delivering high quality and professional service.
        
        Axis MotorWerks specializes in the maintenance and repair of MERCEDES, BMW, 
        JAGUAR, MINI, PORSCHE, AUDI, VOLKSWAGEN, LAND ROVER, TOYOTA, & LEXUS. 
        our mission is to provide our customers with outstanding dealer-level expertise 
        without inflated prices or frustrations. We offer 2 year/24k miles nationwide 
        warranty. Give us a call or drop by and see why we are THE dealer alternative!
        """, 
        "Welcome to Axis MotorWerks", 
        Image.asset('name'), 
        400),
        Container(
          color: const Color.fromARGB(255, 235, 235, 235),
          height: 2100,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "VEHICLES WE CURRENTLY SERVICE",
                textAlign: TextAlign.center,
                style: basicHeaderStyle.copyWith(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              headerDivider(width, 8),
              carDisplay(context),
            ],
          ),
        ),
        const ReviewCarousel(),
        const Divider(),
      ]
    );
  }
}
