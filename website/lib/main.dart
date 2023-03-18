import 'package:flutter/material.dart';
import './widgets/appointment.dart';
import './widgets/page.dart';

final List<SinglePage> pages = [
  const SinglePage(
    name: "Home",
    route: "/",
  ),
  const SinglePage(
    name: "About",
    route: "/about",
  ),
  const SinglePage(
    name: "Book Appointment",
    route: "/appointment",
    body: BookAppointment(),
  )
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Axis Motorwerks",
      routes: {for (SinglePage page in pages) page.route: (BuildContext buildContext) => page.body},
    );
  }
}
