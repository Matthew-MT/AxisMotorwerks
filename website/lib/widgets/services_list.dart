import 'package:flutter/material.dart';
import 'package:website/widgets/text_modifier.dart';
import 'services_text.dart';

Column servicesList(BuildContext context)
{
  final width = MediaQuery.of(context).size.width;
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
      ServicesTextFormat(
      title: "Brake Pads and Rotors",
      description: 
      """
      
      Brake pads are the friction material that rubs 
      against the rotor to slow the vehicle down.
      They wear out over time and need to be replaced.
      """,
      image: Image(image: AssetImage("../assets/images/services/rotors.png")),
      ),
      ServicesTextFormat(
        title: "Brake Fluid Flushes",
        description: 
        """

        Brake fluid is the hydraulic fluid that transfers
        pressure from the brake pedal to the brake calipers.
        It needs to be flushed and replaced every 2-3 years.
        """, 
        image: Image(image: AssetImage("../assets/images/services/brake_fluid.png"))
      ),
      ServicesTextFormat(
      title: "Air and Cabin Filters",
      description: 
      """
      Air filters are used to clean the air that enters
      the engine. They need to be replaced every 15,000 miles.
      """,
      image: Image(image: AssetImage("../assets/images/services/air_filter.png")),
      ),
      ServicesTextFormat(
        title: "Cooling System Repairs",
        description: 
        """
        The cooling system is used to keep the engine 
        from overheating. It is vital to your engines
        health, and should be closely monitored.
        """,
        image: Image(image: AssetImage("../assets/images/services/cooling_system.png")),
      ),
      ServicesTextFormat(
       title: "Check Engine Light Diagnostics",
       description: 
       """
       The check engine light is used to indicate that 
       there is a problem with the fundamental elements
       of the engine, we will preform a diagnostic to
       find what is wrong with the vehicle.
       """,
       image: Image(image: AssetImage("../assets/images/services/check_engine.png")),
        ),
        ServicesTextFormat(
       title: "Electrical Troubleshooting",
       description: 
       """
       Electrical problems can be difficult to diagnose.
       They need to be diagnosed and repaired.
       """,
       image: Image(image: AssetImage("../assets/images/services/electronics.png")),
       ),
      ServicesTextFormat(
        title: "Suspension Repairs",
        description: 
        """
        The suspension is needed to ensure a comfortable,
        bump-free ride. It needs to be inspected and repaired.
        """,
        image: Image(image: AssetImage("../assets/images/services/suspension.png")),
        ),
      ServicesTextFormat(
          title: "Window and Door Repairs",
          description: 
          """
          Windows and doors are used to keep the vehicle sealed.
          They need to be inspected and repaired.
          """,
          image: Image(image: AssetImage("../assets/images/services/door.png")),
        ),
      ServicesTextFormat(
        title: "Fuel System Repairs",
        description: 
        """
        The fuel system is used to deliver fuel to the engine.
        It needs to be inspected and repaired.
        """,
        image: Image(image: AssetImage("../assets/images/services/fuel_system.png")),
      ),
      ServicesTextFormat(
        title: "Leak Detection and Repair",
        description: 
        """
        Leaks can be difficult to detect.
        They need to be diagnosed and repaired.
        """,
        image: Image(image: AssetImage("../assets/images/services/leak.png")),
      ),
      const ServicesTextFormat(
        title: "Transmission Flush",
        description: 
        """
        The transmission is used to transfer power from the 
        engine to the wheels. It needs to be inspected and repaired.
        """,
        image: Image(image: AssetImage("../assets/images/services/transmission.png")),
      ),
      ],
    );
  }
