import 'package:flutter/material.dart';
import './widgets/pages.dart';

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
        "/": (BuildContext buildContext) {
          return HomePage();
        },
        "/about": (BuildContext buildContext) {
          return AboutPage();
        },
        "/pricing": (BuildContext buildContext) {
          return PricingPage();
        },
        "/contact": (BuildContext buildContext) {
          return ContactPage();
        },
        "/faq": (BuildContext buildContext) {
          return FaqPage();
        }      
      },
    );
  }
}
