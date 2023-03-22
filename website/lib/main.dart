import 'package:flutter/material.dart';
import './widgets/appointment.dart';

class PageData {
  final String name;
  final String path;
  final Widget body;

  PageData({required this.name, required this.path, required this.body});
  PageData.basic({required this.name, required this.body}) : path = "/${name.toLowerCase()}";
  PageData.home({required this.body}) : name = "Home", path = "/";
}

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  // Add pages here
  final List<PageData> pages = [
    PageData.home(body: const Text("Home")),
    PageData.basic(name: "About", body: const Text("About us")),
    PageData.basic(name: "Book Appointment", body: const BookAppointment()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books App',
      routes: {for (var pageData in pages) pageData.path: (BuildContext buildContext) {
        return Scaffold(
          appBar: AppBar(
            actions: [for (var pageData in pages) TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white70),
              onPressed:
                ModalRoute.of(buildContext)?.settings.name != pageData.path
                ? () => Navigator.pushNamed(buildContext, pageData.path)
                : null,
              child: Text(pageData.name),
            )],
          ),
          body: pageData.body,
        );
      }},
    );
  }
}
