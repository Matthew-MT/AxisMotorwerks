import 'package:flutter/material.dart';
import 'package:website/pages/page_data.dart';


AppBar desktopAppbar(BuildContext context) {
  return AppBar(
    toolbarHeight: 100,
    shadowColor: const Color.fromARGB(255, 0, 0, 0),
    /*title: Column(
      children:const <Widget> [
        Center(child: Text("1105 N 1st Street"
            , style: TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
            ),)),
        SizedBox(
          height: 20,
        ),
        Center(child: Text("Monday - Friday 8:00am - 5:00pm"
            , style: TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
            ),)),
      ],
    ),*/
    elevation: 100,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 99, 0, 0),
            Color.fromARGB(255, 252, 47, 47),
            Color.fromARGB(255, 255, 255, 92),
          ],
        ),
      ),
    ),
    leadingWidth: 400,
    leading: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, "/"),
        child: Container(
          margin: const EdgeInsets.only(
            left: 4,
            top: 6),
          child: const Text("Axis\nMotorWerks",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 32,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    ),
    actions: [for (var pageData in pages) TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white70,
        minimumSize: Size(MediaQuery.of(context).size.width / 6.75, 60),
        maximumSize: Size(MediaQuery.of(context).size.width / 3, 60),
        alignment: Alignment.center),
      onPressed:
        ModalRoute.of(context)?.settings.name != pageData.path
        ? () => Navigator.pushNamed(context, pageData.path)
        : null,
      child: Text(pageData.name
        , style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
       ),
      ),
    )],
  );
}
