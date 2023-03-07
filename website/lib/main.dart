import 'package:flutter/material.dart';
// import './widgets/pages.dart';
import './widgets/page.dart';

final List<SinglePage> pages = [
  const SinglePage(
    name: "Home",
    route: "/",
  ),
  const SinglePage(
    name: "About",
    route: "/about",
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
