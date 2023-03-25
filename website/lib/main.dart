import 'package:flutter/material.dart';
import './pages/appointment.dart';
import './pages/home.dart';
import './pages/pricing.dart';


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
    PageData.home(body: const Homepage()),
    PageData.basic(name: "About", body: const Text("About us")),
    PageData.basic(name: "Book Appointment", body: const BookAppt()),
    PageData.basic(name: "Pricing", body: const Pricing()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books App',
      routes: {for (var pageData in pages) pageData.path: (BuildContext buildContext) {
        return Scaffold(
          appBar: AppBar(
            elevation: 30,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(255, 252, 47, 47),
                    Color.fromARGB(255, 255, 255, 92),
                  ],
                ),
              ),
            ),
            leading: Image.asset('assets/images/logo.png'),
            leadingWidth: 100, 
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