import 'package:flutter/material.dart';
import 'text_modifier.dart';

Column carDisplay(BuildContext context){

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const SizedBox(height: 40),
      carRow(context, 'assets/images/cars/bmw_icon.png', 'assets/images/cars/audi_icon.png', 'BMW', 'Audi'),
      const SizedBox(height: 100),
      carRow(context, 'assets/images/cars/porsche_icon.png', 'assets/images/cars/mercedes_icon.png', 'Porsche', 'Mercedes'),
      const SizedBox(height: 100),
      carRow(context, 'assets/images/cars/jag_icon.png', 'assets/images/cars/rover_icon.png', 'Jaguar', 'Land Rover'),
      const SizedBox(height: 100),
      carRow(context, 'assets/images/cars/vw_icon.png', 'assets/images/cars/mini_icon.png', 'Volkswagen', 'Mini Cooper'),
      const SizedBox(height: 100),
      carRow(context, 'assets/images/cars/lexus_icon.png', 'assets/images/cars/toyota_icon.png', 'Lexus', 'Toyota'),
      
    ],
  );
}

Row carRow(BuildContext context, String car1, String car2, String car1Name, String car2Name)
{
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(car1),
                fit: BoxFit.fitWidth,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              car1Name,
              style: basicContentStyle
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(car2),
                fit: BoxFit.fitWidth,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              car2Name,
              style: basicContentStyle
            ),
          ),
        ],
      ),
    ],
  );
}