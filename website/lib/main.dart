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
          return HomeNavigationBar();
        },
        "/about": (BuildContext buildContext) {
          return AboutNavigationBar();
        },
        "/pricing": (BuildContext buildContext) {
              return PricingNavigationBar();
        },
        "/contact": (BuildContext buildContext) {
              return ContactNavigationBar();
        },
        "/faq": (BuildContext buildContext) {
              return FAQNavigationBar();
        }      
      },
    );
  }
}
