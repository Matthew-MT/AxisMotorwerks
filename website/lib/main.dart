import 'package:flutter/material.dart';
import './widgets/pages.dart';
// import './widgets/page.dart';

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
      routes: <String, WidgetBuilder>{
        "/": (BuildContext buildContext) => const HomePage(),
        "/about": (BuildContext buildContext) => const AboutPage(),
        "/pricing": (BuildContext buildContext) => const PricingPage(),
        "/contact": (BuildContext buildContext) => const ContactPage(),
        "/faq": (BuildContext buildContext) => const FaqPage(),
      },
    );
  }
}
