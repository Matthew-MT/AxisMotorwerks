import 'package:flutter/material.dart';
import './images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext buildContext) {
          return Scaffold(
            body: ImageHandler(),
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
