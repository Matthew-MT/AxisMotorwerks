import 'package:flutter/material.dart';
import './widgets/navigation_bar.dart';

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
          return Scaffold(
            backgroundColor: Colors.indigo,
            body: Column(
              children: const <Widget>[
                HomeNavigationBar()
              ]
            ),
            appBar: AppBar(
              title: const Text("Home"),
            ),
          );
        },
        "/about": (BuildContext buildContext) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("About"),
            ),
          );
        }
      },
    );
  }
}
