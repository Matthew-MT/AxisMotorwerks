import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import './pages/home.dart';
import './pages/pricing.dart';
import './pages/about.dart';
import './pages/contact.dart';

class PageData {
  final String name;
  final String path;
  final Widget Function(double) builder;

  PageData({required this.name, required this.path, required Widget body}) : builder = ((double height) => body);
  PageData.built({required this.name, required this.path, required this.builder});

  PageData.basic({required this.name, required Widget body}) : path = "/${name.toLowerCase()}", builder = ((double height) => body);
  PageData.basicBuilt({required this.name, required this.builder}) : path = "/${name.toLowerCase()}";

  PageData.home({required Widget body}) : name = "Home", path = "/", builder = ((double height) => body);
  PageData.homeBuilt({required this.builder}) : name = "Home", path = "/";
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
    PageData.homeBuilt(builder: (double appBarHeight) => Homepage(appBarHeight: appBarHeight)),
    PageData.basic(name: "About", body: const About()),
    PageData.basic(name: "Pricing", body: const Pricing()),
    PageData.basic(name: "Contact", body: const Contact()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books App',
      routes: {for (var pageData in pages) pageData.path: (BuildContext buildContext) {
        final appBar = AppBar(
          elevation: 30,
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
          leading: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(buildContext, "/"),
              child: Image.asset('images/logo.jpg'),
            ),
          ),
          leadingWidth: 100,
          actions: [for (var pageData in pages) TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.white70),
            onPressed:
              ModalRoute.of(buildContext)?.settings.name != pageData.path
              ? () => Navigator.pushNamed(buildContext, pageData.path)
              : null,
            child: Text(pageData.name),
          )],
        );

        return Scaffold(
          appBar: appBar,
          body: pageData.builder(appBar.preferredSize.height),
        );
      }},
    ).animate().fadeIn(duration: 400.ms);
  }
}